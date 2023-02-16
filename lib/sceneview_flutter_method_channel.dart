import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:sceneview_flutter/sceneview_node.dart';

import 'sceneview_flutter_platform_interface.dart';

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


  @override
  Future<void> init(int sceneId) async {
    final channel = ensureChannelInitialized(sceneId);
    return channel.invokeMethod<void>('init');
  }

  @override
  void addNode(SceneViewNode node) {
    _channel?.invokeMethod('addNode', node.toMap());
  }

  Future<dynamic> _handleMethodCall(MethodCall call, int mapId) async {
    switch (call.method) {
      default:
        throw MissingPluginException();
    }
  }

  @override
  void dispose(int sceneId) {}
}
