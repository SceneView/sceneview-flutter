import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sceneview_flutter/plane_type.dart';
import 'package:sceneview_flutter/pose.dart';

part 'plane.freezed.dart';

part 'plane.g.dart';

@freezed
class Plane with _$Plane {
  const factory Plane({
    @JsonEnum() PlaneType? type,
    Pose? centerPose,
  }) = _Plane;

  factory Plane.fromJson(Map<String, dynamic> json) => _$PlaneFromJson(json);
}
