part of scene_view_flutter;

class SceneViewController {
  SceneViewController._(
    this._sceneViewState, {
    required this.sceneId,
  }) {
    _connectStream();
  }

  final int sceneId;
  final _SceneViewState _sceneViewState;

  static Future<SceneViewController> init(
      int sceneId, _SceneViewState state) async {
    await SceneviewFlutterPlatform.instance.init(sceneId);
    return SceneViewController._(state, sceneId: sceneId);
  }

  _connectStream() {
    if (_sceneViewState.widget.onSessionUpdated != null) {
      SceneviewFlutterPlatform.instance.onSessionUpdated().listen(
        (event) {
          _sceneViewState.widget.onSessionUpdated!(event);
        },
      );
    }

    if (_sceneViewState.widget.onSessionUpdated != null) {
      SceneviewFlutterPlatform.instance.onTrackingFailureChanged().listen(
            (event) {
          _sceneViewState.widget.onTrackingFailureChanged!(event);
        },
      );
    }
  }

  void addNode(SceneViewNode node) {
    SceneviewFlutterPlatform.instance.addNode(node);
  }

  void dispose() {
    SceneviewFlutterPlatform.instance.dispose(sceneId);
  }
}
