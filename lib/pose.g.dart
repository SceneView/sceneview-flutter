// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pose.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pose _$PoseFromJson(Map json) => Pose(
      const Vector3Converter().fromJson(json['translation'] as List),
      const Vector4Converter().fromJson(json['rotation'] as List),
    );

Map<String, dynamic> _$PoseToJson(Pose instance) => <String, dynamic>{
      'translation': const Vector3Converter().toJson(instance.translation),
      'rotation': const Vector4Converter().toJson(instance.rotation),
    };
