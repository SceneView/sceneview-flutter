// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arsceneview_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ARSceneviewConfig _$ARSceneviewConfigFromJson(Map<String, dynamic> json) {
  return _ARSceneviewConfig.fromJson(json);
}

/// @nodoc
mixin _$ARSceneviewConfig {
  PlaneRenderer? get planeRenderer => throw _privateConstructorUsedError;
  @JsonEnum()
  LightEstimationMode get lightEstimationMode =>
      throw _privateConstructorUsedError;
  @JsonEnum()
  DepthMode get depthMode => throw _privateConstructorUsedError;
  @JsonEnum()
  InstantPlacementMode get instantPlacementMode =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ARSceneviewConfigCopyWith<ARSceneviewConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ARSceneviewConfigCopyWith<$Res> {
  factory $ARSceneviewConfigCopyWith(
          ARSceneviewConfig value, $Res Function(ARSceneviewConfig) then) =
      _$ARSceneviewConfigCopyWithImpl<$Res, ARSceneviewConfig>;
  @useResult
  $Res call(
      {PlaneRenderer? planeRenderer,
      @JsonEnum() LightEstimationMode lightEstimationMode,
      @JsonEnum() DepthMode depthMode,
      @JsonEnum() InstantPlacementMode instantPlacementMode});

  $PlaneRendererCopyWith<$Res>? get planeRenderer;
}

/// @nodoc
class _$ARSceneviewConfigCopyWithImpl<$Res, $Val extends ARSceneviewConfig>
    implements $ARSceneviewConfigCopyWith<$Res> {
  _$ARSceneviewConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planeRenderer = freezed,
    Object? lightEstimationMode = null,
    Object? depthMode = null,
    Object? instantPlacementMode = null,
  }) {
    return _then(_value.copyWith(
      planeRenderer: freezed == planeRenderer
          ? _value.planeRenderer
          : planeRenderer // ignore: cast_nullable_to_non_nullable
              as PlaneRenderer?,
      lightEstimationMode: null == lightEstimationMode
          ? _value.lightEstimationMode
          : lightEstimationMode // ignore: cast_nullable_to_non_nullable
              as LightEstimationMode,
      depthMode: null == depthMode
          ? _value.depthMode
          : depthMode // ignore: cast_nullable_to_non_nullable
              as DepthMode,
      instantPlacementMode: null == instantPlacementMode
          ? _value.instantPlacementMode
          : instantPlacementMode // ignore: cast_nullable_to_non_nullable
              as InstantPlacementMode,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaneRendererCopyWith<$Res>? get planeRenderer {
    if (_value.planeRenderer == null) {
      return null;
    }

    return $PlaneRendererCopyWith<$Res>(_value.planeRenderer!, (value) {
      return _then(_value.copyWith(planeRenderer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ARSceneviewConfigImplCopyWith<$Res>
    implements $ARSceneviewConfigCopyWith<$Res> {
  factory _$$ARSceneviewConfigImplCopyWith(_$ARSceneviewConfigImpl value,
          $Res Function(_$ARSceneviewConfigImpl) then) =
      __$$ARSceneviewConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PlaneRenderer? planeRenderer,
      @JsonEnum() LightEstimationMode lightEstimationMode,
      @JsonEnum() DepthMode depthMode,
      @JsonEnum() InstantPlacementMode instantPlacementMode});

  @override
  $PlaneRendererCopyWith<$Res>? get planeRenderer;
}

/// @nodoc
class __$$ARSceneviewConfigImplCopyWithImpl<$Res>
    extends _$ARSceneviewConfigCopyWithImpl<$Res, _$ARSceneviewConfigImpl>
    implements _$$ARSceneviewConfigImplCopyWith<$Res> {
  __$$ARSceneviewConfigImplCopyWithImpl(_$ARSceneviewConfigImpl _value,
      $Res Function(_$ARSceneviewConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planeRenderer = freezed,
    Object? lightEstimationMode = null,
    Object? depthMode = null,
    Object? instantPlacementMode = null,
  }) {
    return _then(_$ARSceneviewConfigImpl(
      planeRenderer: freezed == planeRenderer
          ? _value.planeRenderer
          : planeRenderer // ignore: cast_nullable_to_non_nullable
              as PlaneRenderer?,
      lightEstimationMode: null == lightEstimationMode
          ? _value.lightEstimationMode
          : lightEstimationMode // ignore: cast_nullable_to_non_nullable
              as LightEstimationMode,
      depthMode: null == depthMode
          ? _value.depthMode
          : depthMode // ignore: cast_nullable_to_non_nullable
              as DepthMode,
      instantPlacementMode: null == instantPlacementMode
          ? _value.instantPlacementMode
          : instantPlacementMode // ignore: cast_nullable_to_non_nullable
              as InstantPlacementMode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ARSceneviewConfigImpl implements _ARSceneviewConfig {
  const _$ARSceneviewConfigImpl(
      {this.planeRenderer = const PlaneRenderer(),
      @JsonEnum() this.lightEstimationMode = LightEstimationMode.disabled,
      @JsonEnum() this.depthMode = DepthMode.disabled,
      @JsonEnum() this.instantPlacementMode = InstantPlacementMode.disabled});

  factory _$ARSceneviewConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$ARSceneviewConfigImplFromJson(json);

  @override
  @JsonKey()
  final PlaneRenderer? planeRenderer;
  @override
  @JsonKey()
  @JsonEnum()
  final LightEstimationMode lightEstimationMode;
  @override
  @JsonKey()
  @JsonEnum()
  final DepthMode depthMode;
  @override
  @JsonKey()
  @JsonEnum()
  final InstantPlacementMode instantPlacementMode;

  @override
  String toString() {
    return 'ARSceneviewConfig(planeRenderer: $planeRenderer, lightEstimationMode: $lightEstimationMode, depthMode: $depthMode, instantPlacementMode: $instantPlacementMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ARSceneviewConfigImpl &&
            (identical(other.planeRenderer, planeRenderer) ||
                other.planeRenderer == planeRenderer) &&
            (identical(other.lightEstimationMode, lightEstimationMode) ||
                other.lightEstimationMode == lightEstimationMode) &&
            (identical(other.depthMode, depthMode) ||
                other.depthMode == depthMode) &&
            (identical(other.instantPlacementMode, instantPlacementMode) ||
                other.instantPlacementMode == instantPlacementMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, planeRenderer,
      lightEstimationMode, depthMode, instantPlacementMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ARSceneviewConfigImplCopyWith<_$ARSceneviewConfigImpl> get copyWith =>
      __$$ARSceneviewConfigImplCopyWithImpl<_$ARSceneviewConfigImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ARSceneviewConfigImplToJson(
      this,
    );
  }
}

abstract class _ARSceneviewConfig implements ARSceneviewConfig {
  const factory _ARSceneviewConfig(
          {final PlaneRenderer? planeRenderer,
          @JsonEnum() final LightEstimationMode lightEstimationMode,
          @JsonEnum() final DepthMode depthMode,
          @JsonEnum() final InstantPlacementMode instantPlacementMode}) =
      _$ARSceneviewConfigImpl;

  factory _ARSceneviewConfig.fromJson(Map<String, dynamic> json) =
      _$ARSceneviewConfigImpl.fromJson;

  @override
  PlaneRenderer? get planeRenderer;
  @override
  @JsonEnum()
  LightEstimationMode get lightEstimationMode;
  @override
  @JsonEnum()
  DepthMode get depthMode;
  @override
  @JsonEnum()
  InstantPlacementMode get instantPlacementMode;
  @override
  @JsonKey(ignore: true)
  _$$ARSceneviewConfigImplCopyWith<_$ARSceneviewConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
