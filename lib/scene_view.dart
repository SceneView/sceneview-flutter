part of scene_view_flutter;

class SceneView extends StatefulWidget {
  const SceneView({
    super.key,
    this.arSceneviewConfig = const ARSceneviewConfig(),
    this.onViewCreated,
    this.onSessionUpdated,
    this.onTrackingFailureChanged,
    this.augmentedImages,
  });

  final ARSceneviewConfig arSceneviewConfig;

  final Function(SessionFrame)? onSessionUpdated;

  final Function(TrackingFailureReason)? onTrackingFailureChanged;
  final List<AugmentedImage>? augmentedImages;
  final Function(SceneViewController)? onViewCreated;

  @override
  State<SceneView> createState() => _SceneViewState();
}

class _SceneViewState extends State<SceneView> {
  final Completer<SceneViewController> _controller =
      Completer<SceneViewController>();

  final Map<String, dynamic> creationParams = <String, dynamic>{};

  @override
  void initState() {
    super.initState();
    if (widget.augmentedImages != null) {
      creationParams['augmentedImages'] =
          widget.augmentedImages!.map((e) => e.toJson()).toList();
    }
    creationParams['arSceneviewConfig'] = widget.arSceneviewConfig.toJson();
  }

  @override
  Widget build(BuildContext context) {
    // This is used in the platform side to register the view.
    const String viewType = 'SceneView';

    return PlatformViewLink(
      viewType: viewType,
      surfaceFactory: (context, controller) {
        return AndroidViewSurface(
          controller: controller as AndroidViewController,
          gestureRecognizers: const <Factory<OneSequenceGestureRecognizer>>{},
          hitTestBehavior: PlatformViewHitTestBehavior.opaque,
        );
      },
      onCreatePlatformView: (params) {
        return PlatformViewsService.initExpensiveAndroidView(
          id: params.id,
          viewType: viewType,
          layoutDirection: TextDirection.ltr,
          creationParams: creationParams,
          creationParamsCodec: const StandardMessageCodec(),
          onFocus: () {
            params.onFocusChanged(true);
          },
        )
          ..addOnPlatformViewCreatedListener(params.onPlatformViewCreated)
          ..addOnPlatformViewCreatedListener((id) {
            onPlatformViewCreated(id);
          });
      },
    );
  }

  Future<void> onPlatformViewCreated(int id) async {
    final controller = await SceneViewController.init(id, this);
    _controller.complete(controller);
    widget.onViewCreated?.call(controller);
  }

  @override
  void dispose() {
    _disposeController();
    super.dispose();
  }

  Future<void> _disposeController() async {
    final controller = await _controller.future;
    controller.dispose();
  }
}
