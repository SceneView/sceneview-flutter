enum LightEstimationMode {
  /** Lighting estimation is disabled. */
  DISABLED,
  /**
   * Lighting estimation is enabled, generating a single-value intensity estimate and three (R, G,
   * B) color correction values.
   */
  AMBIENT_INTENSITY,
  /**
   * Lighting estimation is enabled, generating inferred Environmental HDR lighting estimation in
   * linear color space.
   *
   * <p>This mode is incompatible with the front-facing (selfie) camera. If set on a Session
   * created for the front-facing camera, the call to configure will fail.
   */
  ENVIRONMENTAL_HDR;
}