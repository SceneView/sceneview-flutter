import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sceneview_flutter/vector_converter.dart';
import 'package:vector_math/vector_math.dart';

part 'sceneview_node.freezed.dart';

part 'sceneview_node.g.dart';

@freezed
class SceneViewNode with _$SceneViewNode {
  const factory SceneViewNode({
    required String fileLocation,
    @Vector3Converter() Vector3? position,
    @Vector4Converter() Vector4? rotation,
    double? scale,
  }) = _SceneViewNode;

  factory SceneViewNode.fromJson(Map<String, dynamic> json) =>
      _$SceneViewNodeFromJson(json);

/*  Map<String, dynamic> toMap() {
    final map = {
      'fileLocation': fileLocation,
      'position': position?.toMap(),
      'rotation': rotation?.toMap(),
      'scale': scale,
    };
    map.removeWhere((key, value) => value == null);
    return map;
  }*/
}

/*class KotlinFloat3 {
  final double x;
  final double y;
  final double z;

  KotlinFloat3({this.x = 0.0, this.y = 0.0, this.z = 0.0});

  toMap() {
    return <String, double>{
      'x': x,
      'y': y,
      'z': z,
    };
  }
}*/
