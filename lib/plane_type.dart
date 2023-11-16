import 'package:json_annotation/json_annotation.dart';

enum PlaneType {
  /** A horizontal plane facing upward (e.g. floor or tabletop). */
  @JsonValue(0)
  horizontalUpwardFacing,
  /** A horizontal plane facing downward (e.g. a ceiling). */
  @JsonValue(1)
  horizontalDownwardFacing,
  /** A vertical plane (e.g. a wall). */
  @JsonValue(2)
  vertical;
}