// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_frame.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionFrameImpl _$$SessionFrameImplFromJson(Map json) => _$SessionFrameImpl(
      planes: (json['planes'] as List<dynamic>?)
              ?.map((e) => Plane.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      centerPose: json['centerPose'] == null
          ? null
          : Pose.fromJson(Map<String, dynamic>.from(json['centerPose'] as Map)),
    );

Map<String, dynamic> _$$SessionFrameImplToJson(_$SessionFrameImpl instance) =>
    <String, dynamic>{
      'planes': instance.planes.map((e) => e.toJson()).toList(),
      'centerPose': instance.centerPose?.toJson(),
    };
