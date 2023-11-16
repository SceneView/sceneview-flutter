import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sceneview_flutter/vector_converter.dart';
import 'package:vector_math/vector_math.dart';

part 'pose.g.dart';

@JsonSerializable()
class Pose {
  @Vector3Converter()
  final Vector3 translation;
  @Vector4Converter()
  final Vector4 rotation;

  Pose(this.translation, this.rotation);

  @override
  factory Pose.fromJson(Map<String, dynamic> map) {
    return Pose(
      Vector3.array(map["translation"]),
      Vector4.array(map["rotation"]),
    );
  }

  @override
  Map<String, dynamic> toJson() => _$PoseToJson(this);
}
