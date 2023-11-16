import 'package:freezed_annotation/freezed_annotation.dart';

part 'augmented_image.freezed.dart';

part 'augmented_image.g.dart';

@freezed
class AugmentedImage with _$AugmentedImage {
  const factory AugmentedImage({
    required String name,
    required String location,
  }) = _AuAugmentedImage;

  factory AugmentedImage.fromJson(Map<String, dynamic> json) =>
      _$AugmentedImageFromJson(json);
}