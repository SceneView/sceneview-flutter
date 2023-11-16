// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plane.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaneImpl _$$PlaneImplFromJson(Map json) => _$PlaneImpl(
      type: $enumDecodeNullable(_$PlaneTypeEnumMap, json['type']),
      centerPose: json['centerPose'] == null
          ? null
          : Pose.fromJson(Map<String, dynamic>.from(json['centerPose'] as Map)),
    );

Map<String, dynamic> _$$PlaneImplToJson(_$PlaneImpl instance) =>
    <String, dynamic>{
      'type': _$PlaneTypeEnumMap[instance.type],
      'centerPose': instance.centerPose?.toJson(),
    };

const _$PlaneTypeEnumMap = {
  PlaneType.horizontalUpwardFacing: 0,
  PlaneType.horizontalDownwardFacing: 1,
  PlaneType.vertical: 2,
};
