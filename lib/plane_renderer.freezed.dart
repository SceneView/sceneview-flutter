// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plane_renderer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaneRenderer _$PlaneRendererFromJson(Map<String, dynamic> json) {
  return _PlaneRenderer.fromJson(json);
}

/// @nodoc
mixin _$PlaneRenderer {
  bool? get isVisible => throw _privateConstructorUsedError;
  bool? get isEnabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaneRendererCopyWith<PlaneRenderer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaneRendererCopyWith<$Res> {
  factory $PlaneRendererCopyWith(
          PlaneRenderer value, $Res Function(PlaneRenderer) then) =
      _$PlaneRendererCopyWithImpl<$Res, PlaneRenderer>;
  @useResult
  $Res call({bool? isVisible, bool? isEnabled});
}

/// @nodoc
class _$PlaneRendererCopyWithImpl<$Res, $Val extends PlaneRenderer>
    implements $PlaneRendererCopyWith<$Res> {
  _$PlaneRendererCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVisible = freezed,
    Object? isEnabled = freezed,
  }) {
    return _then(_value.copyWith(
      isVisible: freezed == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEnabled: freezed == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaneRendererImplCopyWith<$Res>
    implements $PlaneRendererCopyWith<$Res> {
  factory _$$PlaneRendererImplCopyWith(
          _$PlaneRendererImpl value, $Res Function(_$PlaneRendererImpl) then) =
      __$$PlaneRendererImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isVisible, bool? isEnabled});
}

/// @nodoc
class __$$PlaneRendererImplCopyWithImpl<$Res>
    extends _$PlaneRendererCopyWithImpl<$Res, _$PlaneRendererImpl>
    implements _$$PlaneRendererImplCopyWith<$Res> {
  __$$PlaneRendererImplCopyWithImpl(
      _$PlaneRendererImpl _value, $Res Function(_$PlaneRendererImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVisible = freezed,
    Object? isEnabled = freezed,
  }) {
    return _then(_$PlaneRendererImpl(
      isVisible: freezed == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEnabled: freezed == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaneRendererImpl implements _PlaneRenderer {
  const _$PlaneRendererImpl({this.isVisible = true, this.isEnabled = true});

  factory _$PlaneRendererImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaneRendererImplFromJson(json);

  @override
  @JsonKey()
  final bool? isVisible;
  @override
  @JsonKey()
  final bool? isEnabled;

  @override
  String toString() {
    return 'PlaneRenderer(isVisible: $isVisible, isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaneRendererImpl &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isVisible, isEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaneRendererImplCopyWith<_$PlaneRendererImpl> get copyWith =>
      __$$PlaneRendererImplCopyWithImpl<_$PlaneRendererImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaneRendererImplToJson(
      this,
    );
  }
}

abstract class _PlaneRenderer implements PlaneRenderer {
  const factory _PlaneRenderer({final bool? isVisible, final bool? isEnabled}) =
      _$PlaneRendererImpl;

  factory _PlaneRenderer.fromJson(Map<String, dynamic> json) =
      _$PlaneRendererImpl.fromJson;

  @override
  bool? get isVisible;
  @override
  bool? get isEnabled;
  @override
  @JsonKey(ignore: true)
  _$$PlaneRendererImplCopyWith<_$PlaneRendererImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
