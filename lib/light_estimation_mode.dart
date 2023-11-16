import 'package:json_annotation/json_annotation.dart';
//
//part 'light_estimation_mode.g.dart';
//
// @JsonEnum()
enum LightEstimationMode {
  /** Lighting estimation is disabled. */
  @JsonValue(0)
  disabled,
  /**
   * Lighting estimation is enabled, generating a single-value intensity estimate and three (R, G,
   * B) color correction values.
   */
  @JsonValue(1)
  ambientIntensity,
  /**
   * Lighting estimation is enabled, generating inferred Environmental HDR lighting estimation in
   * linear color space.
   *
   * <p>This mode is incompatible with the front-facing (selfie) camera. If set on a Session
   * created for the front-facing camera, the call to configure will fail.
   */
  @JsonValue(2)
  environmentalHdr;

  // String toJson() => _$AEnumMap[this]!;
}