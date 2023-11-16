import 'package:json_annotation/json_annotation.dart';
import 'package:vector_math/vector_math.dart';

class Vector3Converter implements JsonConverter<Vector3, List<dynamic>> {
  const Vector3Converter();

  @override
  Vector3 fromJson(List<dynamic> json) {
    return Vector3(json[0], json[1], json[2]);
  }

  @override
  List<dynamic> toJson(Vector3 object) {
    final list = List.filled(3, 0.0);
    object.copyIntoArray(list);
    return list;
  }
}

class Vector4Converter implements JsonConverter<Vector4, List<dynamic>> {
  const Vector4Converter();

  @override
  Vector4 fromJson(List<dynamic> json) {
    return Vector4(json[0], json[1], json[2], json[3]);
  }

  @override
  List<dynamic> toJson(Vector4 object) {
    final list = List.filled(4, 0.0);
    object.copyIntoArray(list);
    return list;
  }
}