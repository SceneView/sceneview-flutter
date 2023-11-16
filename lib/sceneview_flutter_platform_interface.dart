import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:sceneview_flutter/sceneview_node.dart';
import 'package:sceneview_flutter/tracking_failure_reason.dart';

import 'sceneview_flutter_method_channel.dart';

abstract class SceneviewFlutterPlatform extends PlatformInterface {
  /// Constructs a SceneviewFlutterPlatform.
  SceneviewFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static SceneviewFlutterPlatform _instance = MethodChannelSceneViewFlutter();

  /// The default instance of [SceneviewFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelSceneViewFlutter].
  static SceneviewFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SceneviewFlutterPlatform] when
  /// they register themselves.
  static set instance(SceneviewFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> init(int sceneId) {
    throw UnimplementedError('init() has not been implemented.');
  }

  void addNode(SceneViewNode node) {
    throw UnimplementedError('addNode() has not been implemented.');
  }

  Stream<String> onSessionUpdated() {
    throw UnimplementedError('onSessionUpdated() has not been implemented.');
  }

  Stream<TrackingFailureReason> onTrackingFailureChanged() {
    throw UnimplementedError(
        'onTrackingFailureChanged() has not been implemented.');
  }

  void dispose(int sceneId) {
    throw UnimplementedError('dispose() has not been implemented.');
  }
}
