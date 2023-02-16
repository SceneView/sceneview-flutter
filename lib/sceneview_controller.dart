import 'package:flutter/services.dart';
import 'package:sceneview_flutter/sceneview_flutter_platform_interface.dart';
import 'package:sceneview_flutter/sceneview_node.dart';

class SceneViewController {
  SceneViewController._({
    required this.sceneId,
  });

  final int sceneId;

  static Future<SceneViewController> init(
    int sceneId,
  ) async {
    await SceneviewFlutterPlatform.instance.init(sceneId);
    return SceneViewController._(sceneId: sceneId);
  }

  void addNode(SceneViewNode node) {
    SceneviewFlutterPlatform.instance.addNode(node);
  }

  void dispose() {
    SceneviewFlutterPlatform.instance.dispose(sceneId);
  }

}
