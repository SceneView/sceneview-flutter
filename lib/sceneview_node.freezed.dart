// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sceneview_node.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SceneViewNode _$SceneViewNodeFromJson(Map<String, dynamic> json) {
  return _SceneViewNode.fromJson(json);
}

/// @nodoc
mixin _$SceneViewNode {
  String get fileLocation => throw _privateConstructorUsedError;
  @Vector3Converter()
  Vector3? get position => throw _privateConstructorUsedError;
  @Vector4Converter()
  Vector4? get rotation => throw _privateConstructorUsedError;
  double? get scale => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SceneViewNodeCopyWith<SceneViewNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SceneViewNodeCopyWith<$Res> {
  factory $SceneViewNodeCopyWith(
          SceneViewNode value, $Res Function(SceneViewNode) then) =
      _$SceneViewNodeCopyWithImpl<$Res, SceneViewNode>;
  @useResult
  $Res call(
      {String fileLocation,
      @Vector3Converter() Vector3? position,
      @Vector4Converter() Vector4? rotation,
      double? scale});
}

/// @nodoc
class _$SceneViewNodeCopyWithImpl<$Res, $Val extends SceneViewNode>
    implements $SceneViewNodeCopyWith<$Res> {
  _$SceneViewNodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileLocation = null,
    Object? position = freezed,
    Object? rotation = freezed,
    Object? scale = freezed,
  }) {
    return _then(_value.copyWith(
      fileLocation: null == fileLocation
          ? _value.fileLocation
          : fileLocation // ignore: cast_nullable_to_non_nullable
              as String,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Vector3?,
      rotation: freezed == rotation
          ? _value.rotation
          : rotation // ignore: cast_nullable_to_non_nullable
              as Vector4?,
      scale: freezed == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SceneViewNodeImplCopyWith<$Res>
    implements $SceneViewNodeCopyWith<$Res> {
  factory _$$SceneViewNodeImplCopyWith(
          _$SceneViewNodeImpl value, $Res Function(_$SceneViewNodeImpl) then) =
      __$$SceneViewNodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fileLocation,
      @Vector3Converter() Vector3? position,
      @Vector4Converter() Vector4? rotation,
      double? scale});
}

/// @nodoc
class __$$SceneViewNodeImplCopyWithImpl<$Res>
    extends _$SceneViewNodeCopyWithImpl<$Res, _$SceneViewNodeImpl>
    implements _$$SceneViewNodeImplCopyWith<$Res> {
  __$$SceneViewNodeImplCopyWithImpl(
      _$SceneViewNodeImpl _value, $Res Function(_$SceneViewNodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileLocation = null,
    Object? position = freezed,
    Object? rotation = freezed,
    Object? scale = freezed,
  }) {
    return _then(_$SceneViewNodeImpl(
      fileLocation: null == fileLocation
          ? _value.fileLocation
          : fileLocation // ignore: cast_nullable_to_non_nullable
              as String,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Vector3?,
      rotation: freezed == rotation
          ? _value.rotation
          : rotation // ignore: cast_nullable_to_non_nullable
              as Vector4?,
      scale: freezed == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SceneViewNodeImpl implements _SceneViewNode {
  const _$SceneViewNodeImpl(
      {required this.fileLocation,
      @Vector3Converter() this.position,
      @Vector4Converter() this.rotation,
      this.scale});

  factory _$SceneViewNodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SceneViewNodeImplFromJson(json);

  @override
  final String fileLocation;
  @override
  @Vector3Converter()
  final Vector3? position;
  @override
  @Vector4Converter()
  final Vector4? rotation;
  @override
  final double? scale;

  @override
  String toString() {
    return 'SceneViewNode(fileLocation: $fileLocation, position: $position, rotation: $rotation, scale: $scale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SceneViewNodeImpl &&
            (identical(other.fileLocation, fileLocation) ||
                other.fileLocation == fileLocation) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.rotation, rotation) ||
                other.rotation == rotation) &&
            (identical(other.scale, scale) || other.scale == scale));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fileLocation, position, rotation, scale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SceneViewNodeImplCopyWith<_$SceneViewNodeImpl> get copyWith =>
      __$$SceneViewNodeImplCopyWithImpl<_$SceneViewNodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SceneViewNodeImplToJson(
      this,
    );
  }
}

abstract class _SceneViewNode implements SceneViewNode {
  const factory _SceneViewNode(
      {required final String fileLocation,
      @Vector3Converter() final Vector3? position,
      @Vector4Converter() final Vector4? rotation,
      final double? scale}) = _$SceneViewNodeImpl;

  factory _SceneViewNode.fromJson(Map<String, dynamic> json) =
      _$SceneViewNodeImpl.fromJson;

  @override
  String get fileLocation;
  @override
  @Vector3Converter()
  Vector3? get position;
  @override
  @Vector4Converter()
  Vector4? get rotation;
  @override
  double? get scale;
  @override
  @JsonKey(ignore: true)
  _$$SceneViewNodeImplCopyWith<_$SceneViewNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
