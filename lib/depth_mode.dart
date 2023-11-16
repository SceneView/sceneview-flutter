import 'package:json_annotation/json_annotation.dart';
//
// part 'depth_mode.g.dart';
//
// @JsonEnum()
enum DepthMode {
  /**
   * No depth information will be provided. Calling {@link
   * com.google.ar.core.Frame#acquireDepthImage16Bits Frame#acquireDepthImage16Bits} throws {@link
   * java.lang.IllegalStateException}.
   */
  @JsonValue(0)
  disabled,
  /**
   * On <a href="https://developers.google.com/ar/devices">supported devices</a>, the best
   * possible depth is estimated based on hardware and software sources. Available sources of
   * automatic depth are:
   *
   * <ul>
   *   <li>Depth from motion, using the main RGB camera
   *   <li>Hardware depth sensor, such as a time-of-flight sensor (or ToF sensor)
   * </ul>
   *
   * Provides depth estimation for every pixel in the image, and works best for static scenes.
   * Adds significant computational load.
   *
   * <p>With this mode enabled, {@link com.google.ar.core.Frame#hitTest Frame#hitTest} also
   * returns {@link com.google.ar.core.DepthPoint DepthPoint} in the output {@code
   * List<HitResult>}, which are sampled from the generated depth image for the current frame if
   * available.
   */
  @JsonValue(1)
  automatic,
  /**
   * On <a href="https://developers.google.com/ar/devices">ARCore supported devices</a> that also
   * support the Depth API, provides a "raw", mostly unfiltered, depth image ({@link
   * com.google.ar.core.Frame#acquireRawDepthImage16Bits }) and depth confidence image ({@link
   * com.google.ar.core.Frame#acquireRawDepthConfidenceImage }).
   *
   * <p>The raw depth image is sparse and does not provide valid depth for all pixels. Pixels
   * without a valid depth estimate have a pixel value of 0.
   *
   * <p>Raw depth data is also available when {@link com.google.ar.core.Config.DepthMode#AUTOMATIC
   * DepthMode#AUTOMATIC} is selected.
   *
   * <p>Raw depth is intended to be used in cases that involve understanding of the geometry in
   * the environment.
   */
  @JsonValue(2)
  rawDepthOnly;
}
