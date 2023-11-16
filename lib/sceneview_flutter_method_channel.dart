import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:sceneview_flutter/sceneview_node.dart';
import 'package:sceneview_flutter/session_frame.dart';
import 'package:sceneview_flutter/tracking_failure_reason.dart';

import 'sceneview_flutter_platform_interface.dart';
import 'package:stream_transform/stream_transform.dart';

/// An implementation of [SceneviewFlutterPlatform] that uses method channels.
class MethodChannelSceneViewFlutter extends SceneviewFlutterPlatform {
  /// Registers the Android implementation of SceneviewFlutterPlatform.
  static void registerWith() {
    SceneviewFlutterPlatform.instance = MethodChannelSceneViewFlutter();
  }

  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('sceneview_flutter');

  MethodChannel? _channel;

  MethodChannel ensureChannelInitialized(int sceneId) {
    MethodChannel? channel = _channel;
    if (channel == null) {
      channel = MethodChannel('scene_view_$sceneId');
      channel.setMethodCallHandler(
          (MethodCall call) => _handleMethodCall(call, sceneId));
      _channel = channel;
    }
    return channel;
  }

  final StreamController<Object?> _mapEventStreamController =
      StreamController<Object?>.broadcast();

  Stream<Object?> _events() => _mapEventStreamController.stream;

  @override
  Future<void> init(int sceneId) async {
    final channel = ensureChannelInitialized(sceneId);
    return channel.invokeMethod<void>('init');
  }

  @override
  void addNode(SceneViewNode node) {
    _channel?.invokeMethod('addNode', node.toJson());
  }

  @override
  Stream<SessionFrame> onSessionUpdated() {
    return _events().whereType<SessionFrame>();
  }

  @override
  Stream<TrackingFailureReason> onTrackingFailureChanged() {
    return _events().whereType<TrackingFailureReason>();
  }

  Future<dynamic> _handleMethodCall(MethodCall call, int mapId) async {
    switch (call.method) {
      case 'onTrackingFailureChanged':
        _mapEventStreamController
            .add(TrackingFailureReason.values[call.arguments as int]);
        break;
      case 'onSessionUpdated':
        try {
          final map = _getArgumentDictionary(call);

          if (map.containsKey('planes')) {
            print('----------- contains planes');
            if ((map['planes'] as List<dynamic>).isNotEmpty) {
              print('-----------$map');

              _mapEventStreamController.add(SessionFrame.fromJson(map));
            }
          }
        } catch (ex, st) {
          print('ERROR: $ex');
          print('ERROR: $st');
        }
        break;
      default:
        throw MissingPluginException();
    }
  }

  Map<String, dynamic> _getArgumentDictionary(MethodCall call) {
    return Map<String, dynamic>.from(call.arguments);
  }

  @override
  void dispose(int sceneId) {}
}
