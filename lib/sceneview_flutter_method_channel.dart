import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'sceneview_flutter_platform_interface.dart';

/// An implementation of [SceneviewFlutterPlatform] that uses method channels.
class MethodChannelSceneviewFlutter extends SceneviewFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('sceneview_flutter');
}
