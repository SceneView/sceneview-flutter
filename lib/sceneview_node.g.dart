// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sceneview_node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SceneViewNodeImpl _$$SceneViewNodeImplFromJson(Map json) =>
    _$SceneViewNodeImpl(
      fileLocation: json['fileLocation'] as String,
      position: _$JsonConverterFromJson<List<dynamic>, Vector3>(
          json['position'], const Vector3Converter().fromJson),
      rotation: _$JsonConverterFromJson<List<dynamic>, Vector4>(
          json['rotation'], const Vector4Converter().fromJson),
      scale: (json['scale'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SceneViewNodeImplToJson(_$SceneViewNodeImpl instance) =>
    <String, dynamic>{
      'fileLocation': instance.fileLocation,
      'position': _$JsonConverterToJson<List<dynamic>, Vector3>(
          instance.position, const Vector3Converter().toJson),
      'rotation': _$JsonConverterToJson<List<dynamic>, Vector4>(
          instance.rotation, const Vector4Converter().toJson),
      'scale': instance.scale,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
