import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sceneview_flutter/depth_mode.dart';
import 'package:sceneview_flutter/instant_placement_mode.dart';
import 'package:sceneview_flutter/light_estimation_mode.dart';
import 'package:sceneview_flutter/plane_renderer.dart';

part 'arsceneview_config.freezed.dart';

part 'arsceneview_config.g.dart';

@freezed
class ARSceneviewConfig with _$ARSceneviewConfig {
  const factory ARSceneviewConfig({
    @Default(PlaneRenderer()) PlaneRenderer? planeRenderer,
    @JsonEnum()
    @Default(LightEstimationMode.disabled)
    // @LightEstimationModeConverter()
    LightEstimationMode lightEstimationMode,
    @JsonEnum() @Default(DepthMode.disabled) DepthMode depthMode,
    @JsonEnum() @Default(InstantPlacementMode.disabled) InstantPlacementMode instantPlacementMode,
  }) = _ARSceneviewConfig;

  factory ARSceneviewConfig.fromJson(Map<String, dynamic> json) =>
      _$ARSceneviewConfigFromJson(json);
}
