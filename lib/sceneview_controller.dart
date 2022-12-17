import 'package:flutter/services.dart';

class SceneViewController {
  MethodChannel? _channel;

  bool get isRegistered => _channel != null;

  void onViewRegistered(int id) {
    _channel = MethodChannel('scene_view_$id');
  }

  void displayDemo() {
    if (!isRegistered) return;

    _channel?.invokeMethod("showDemo");
  }

  // Add new methods here and call the method channel to execute them native side
}
