// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arsceneview_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ARSceneviewConfigImpl _$$ARSceneviewConfigImplFromJson(Map json) =>
    _$ARSceneviewConfigImpl(
      planeRenderer: json['planeRenderer'] == null
          ? const PlaneRenderer()
          : PlaneRenderer.fromJson(
              Map<String, dynamic>.from(json['planeRenderer'] as Map)),
      lightEstimationMode: $enumDecodeNullable(
              _$LightEstimationModeEnumMap, json['lightEstimationMode']) ??
          LightEstimationMode.disabled,
      depthMode: $enumDecodeNullable(_$DepthModeEnumMap, json['depthMode']) ??
          DepthMode.disabled,
      instantPlacementMode: $enumDecodeNullable(
              _$InstantPlacementModeEnumMap, json['instantPlacementMode']) ??
          InstantPlacementMode.disabled,
    );

Map<String, dynamic> _$$ARSceneviewConfigImplToJson(
        _$ARSceneviewConfigImpl instance) =>
    <String, dynamic>{
      'planeRenderer': instance.planeRenderer?.toJson(),
      'lightEstimationMode':
          _$LightEstimationModeEnumMap[instance.lightEstimationMode]!,
      'depthMode': _$DepthModeEnumMap[instance.depthMode]!,
      'instantPlacementMode':
          _$InstantPlacementModeEnumMap[instance.instantPlacementMode]!,
    };

const _$LightEstimationModeEnumMap = {
  LightEstimationMode.disabled: 0,
  LightEstimationMode.ambientIntensity: 1,
  LightEstimationMode.environmentalHdr: 2,
};

const _$DepthModeEnumMap = {
  DepthMode.disabled: 0,
  DepthMode.automatic: 1,
  DepthMode.rawDepthOnly: 2,
};

const _$InstantPlacementModeEnumMap = {
  InstantPlacementMode.disabled: 0,
  InstantPlacementMode.localYUp: 1,
};
