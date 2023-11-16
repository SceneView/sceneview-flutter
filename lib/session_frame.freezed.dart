// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_frame.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionFrame _$SessionFrameFromJson(Map<String, dynamic> json) {
  return _SessionFrame.fromJson(json);
}

/// @nodoc
mixin _$SessionFrame {
  List<Plane> get planes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionFrameCopyWith<SessionFrame> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionFrameCopyWith<$Res> {
  factory $SessionFrameCopyWith(
          SessionFrame value, $Res Function(SessionFrame) then) =
      _$SessionFrameCopyWithImpl<$Res, SessionFrame>;
  @useResult
  $Res call({List<Plane> planes});
}

/// @nodoc
class _$SessionFrameCopyWithImpl<$Res, $Val extends SessionFrame>
    implements $SessionFrameCopyWith<$Res> {
  _$SessionFrameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planes = null,
  }) {
    return _then(_value.copyWith(
      planes: null == planes
          ? _value.planes
          : planes // ignore: cast_nullable_to_non_nullable
              as List<Plane>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionFrameImplCopyWith<$Res>
    implements $SessionFrameCopyWith<$Res> {
  factory _$$SessionFrameImplCopyWith(
          _$SessionFrameImpl value, $Res Function(_$SessionFrameImpl) then) =
      __$$SessionFrameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Plane> planes});
}

/// @nodoc
class __$$SessionFrameImplCopyWithImpl<$Res>
    extends _$SessionFrameCopyWithImpl<$Res, _$SessionFrameImpl>
    implements _$$SessionFrameImplCopyWith<$Res> {
  __$$SessionFrameImplCopyWithImpl(
      _$SessionFrameImpl _value, $Res Function(_$SessionFrameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planes = null,
  }) {
    return _then(_$SessionFrameImpl(
      planes: null == planes
          ? _value._planes
          : planes // ignore: cast_nullable_to_non_nullable
              as List<Plane>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionFrameImpl implements _SessionFrame {
  const _$SessionFrameImpl({final List<Plane> planes = const []})
      : _planes = planes;

  factory _$SessionFrameImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionFrameImplFromJson(json);

  final List<Plane> _planes;
  @override
  @JsonKey()
  List<Plane> get planes {
    if (_planes is EqualUnmodifiableListView) return _planes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_planes);
  }

  @override
  String toString() {
    return 'SessionFrame(planes: $planes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionFrameImpl &&
            const DeepCollectionEquality().equals(other._planes, _planes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_planes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionFrameImplCopyWith<_$SessionFrameImpl> get copyWith =>
      __$$SessionFrameImplCopyWithImpl<_$SessionFrameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionFrameImplToJson(
      this,
    );
  }
}

abstract class _SessionFrame implements SessionFrame {
  const factory _SessionFrame({final List<Plane> planes}) = _$SessionFrameImpl;

  factory _SessionFrame.fromJson(Map<String, dynamic> json) =
      _$SessionFrameImpl.fromJson;

  @override
  List<Plane> get planes;
  @override
  @JsonKey(ignore: true)
  _$$SessionFrameImplCopyWith<_$SessionFrameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
