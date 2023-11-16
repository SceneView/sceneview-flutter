// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'augmented_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AugmentedImage _$AugmentedImageFromJson(Map<String, dynamic> json) {
  return _AuAugmentedImage.fromJson(json);
}

/// @nodoc
mixin _$AugmentedImage {
  String get name => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AugmentedImageCopyWith<AugmentedImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AugmentedImageCopyWith<$Res> {
  factory $AugmentedImageCopyWith(
          AugmentedImage value, $Res Function(AugmentedImage) then) =
      _$AugmentedImageCopyWithImpl<$Res, AugmentedImage>;
  @useResult
  $Res call({String name, String location});
}

/// @nodoc
class _$AugmentedImageCopyWithImpl<$Res, $Val extends AugmentedImage>
    implements $AugmentedImageCopyWith<$Res> {
  _$AugmentedImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuAugmentedImageImplCopyWith<$Res>
    implements $AugmentedImageCopyWith<$Res> {
  factory _$$AuAugmentedImageImplCopyWith(_$AuAugmentedImageImpl value,
          $Res Function(_$AuAugmentedImageImpl) then) =
      __$$AuAugmentedImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String location});
}

/// @nodoc
class __$$AuAugmentedImageImplCopyWithImpl<$Res>
    extends _$AugmentedImageCopyWithImpl<$Res, _$AuAugmentedImageImpl>
    implements _$$AuAugmentedImageImplCopyWith<$Res> {
  __$$AuAugmentedImageImplCopyWithImpl(_$AuAugmentedImageImpl _value,
      $Res Function(_$AuAugmentedImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? location = null,
  }) {
    return _then(_$AuAugmentedImageImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuAugmentedImageImpl implements _AuAugmentedImage {
  const _$AuAugmentedImageImpl({required this.name, required this.location});

  factory _$AuAugmentedImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuAugmentedImageImplFromJson(json);

  @override
  final String name;
  @override
  final String location;

  @override
  String toString() {
    return 'AugmentedImage(name: $name, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuAugmentedImageImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuAugmentedImageImplCopyWith<_$AuAugmentedImageImpl> get copyWith =>
      __$$AuAugmentedImageImplCopyWithImpl<_$AuAugmentedImageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuAugmentedImageImplToJson(
      this,
    );
  }
}

abstract class _AuAugmentedImage implements AugmentedImage {
  const factory _AuAugmentedImage(
      {required final String name,
      required final String location}) = _$AuAugmentedImageImpl;

  factory _AuAugmentedImage.fromJson(Map<String, dynamic> json) =
      _$AuAugmentedImageImpl.fromJson;

  @override
  String get name;
  @override
  String get location;
  @override
  @JsonKey(ignore: true)
  _$$AuAugmentedImageImplCopyWith<_$AuAugmentedImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
