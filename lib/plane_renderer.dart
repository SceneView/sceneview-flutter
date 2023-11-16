import 'package:freezed_annotation/freezed_annotation.dart';

part 'plane_renderer.freezed.dart';

part 'plane_renderer.g.dart';

@freezed
class PlaneRenderer with _$PlaneRenderer {
  const factory PlaneRenderer({
    @Default(true) bool? isVisible,
    @Default(true) bool? isEnabled,
  }) = _PlaneRenderer;

  factory PlaneRenderer.fromJson(Map<String, dynamic> json) =>
      _$PlaneRendererFromJson(json);
}
