// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plane.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Plane _$PlaneFromJson(Map<String, dynamic> json) {
  return _Plane.fromJson(json);
}

/// @nodoc
mixin _$Plane {
  @JsonEnum()
  PlaneType? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaneCopyWith<Plane> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaneCopyWith<$Res> {
  factory $PlaneCopyWith(Plane value, $Res Function(Plane) then) =
      _$PlaneCopyWithImpl<$Res, Plane>;
  @useResult
  $Res call({@JsonEnum() PlaneType? type});
}

/// @nodoc
class _$PlaneCopyWithImpl<$Res, $Val extends Plane>
    implements $PlaneCopyWith<$Res> {
  _$PlaneCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PlaneType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaneImplCopyWith<$Res> implements $PlaneCopyWith<$Res> {
  factory _$$PlaneImplCopyWith(
          _$PlaneImpl value, $Res Function(_$PlaneImpl) then) =
      __$$PlaneImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonEnum() PlaneType? type});
}

/// @nodoc
class __$$PlaneImplCopyWithImpl<$Res>
    extends _$PlaneCopyWithImpl<$Res, _$PlaneImpl>
    implements _$$PlaneImplCopyWith<$Res> {
  __$$PlaneImplCopyWithImpl(
      _$PlaneImpl _value, $Res Function(_$PlaneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$PlaneImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PlaneType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaneImpl implements _Plane {
  const _$PlaneImpl({@JsonEnum() this.type});

  factory _$PlaneImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaneImplFromJson(json);

  @override
  @JsonEnum()
  final PlaneType? type;

  @override
  String toString() {
    return 'Plane(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaneImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaneImplCopyWith<_$PlaneImpl> get copyWith =>
      __$$PlaneImplCopyWithImpl<_$PlaneImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaneImplToJson(
      this,
    );
  }
}

abstract class _Plane implements Plane {
  const factory _Plane({@JsonEnum() final PlaneType? type}) = _$PlaneImpl;

  factory _Plane.fromJson(Map<String, dynamic> json) = _$PlaneImpl.fromJson;

  @override
  @JsonEnum()
  PlaneType? get type;
  @override
  @JsonKey(ignore: true)
  _$$PlaneImplCopyWith<_$PlaneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
