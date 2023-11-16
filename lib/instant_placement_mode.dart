import 'package:json_annotation/json_annotation.dart';

/**
 * Select the behavior of Instant Placement. Default value is {@link #DISABLED}.
 *
 * <p>Use {@link
 * com.google.ar.core.Config#setInstantPlacementMode(com.google.ar.core.Config.InstantPlacementMode)
 * Config#setInstantPlacementMode(InstantPlacementMode)} to set the desired mode.
 */
enum InstantPlacementMode {
  /**
   * Disable Instant Placement. {@link
   * com.google.ar.core.Frame#hitTestInstantPlacement(float,float,float)
   * Frame#hitTestInstantPlacement(float, float, float)} will return an empty list.
   *
   * <p>When Instant Placement is disabled, any {@link com.google.ar.core.InstantPlacementPoint
   * InstantPlacementPoint} that has {@link
   * com.google.ar.core.InstantPlacementPoint.TrackingMethod#SCREENSPACE_WITH_APPROXIMATE_DISTANCE
   * } tracking method will result in tracking state becoming permanently {@link
   * com.google.ar.core.TrackingState#STOPPED TrackingState#STOPPED}.
   */
  @JsonValue(0)
  disabled,
  /**
   * Enable Instant Placement. If the hit test is successful, {@link
   * com.google.ar.core.Frame#hitTestInstantPlacement(float,float,float) } will return a single
   * {@link com.google.ar.core.InstantPlacementPoint InstantPlacementPoint} with the +Y pointing
   * upward, against gravity. Otherwise, returns an empty result set.
   *
   * <p>This mode is currently intended to be used with hit tests against horizontal surfaces.
   *
   * <p>Hit tests may also be performed against surfaces with any orientation, however:
   *
   * <ul>
   *   <li>The resulting Instant Placement point will always have a pose with +Y pointing upward,
   *       against gravity.
   *   <li>No guarantees are made with respect to orientation of +X and +Z. Specifically, a hit
   *       test against a vertical surface, such as a wall, will not result in a pose that's in
   *       any way aligned to the plane of the wall, other than +Y being up, against gravity.
   *   <li>The {@link com.google.ar.core.InstantPlacementPoint InstantPlacementPoint}'s tracking
   *       method may never become {@link
   *       com.google.ar.core.InstantPlacementPoint.TrackingMethod#FULL_TRACKING } or may take a
   *       long time to reach this state. The tracking method remains {@link
   *       com.google.ar.core.InstantPlacementPoint.TrackingMethod#SCREENSPACE_WITH_APPROXIMATE_DISTANCE
   *       } until a (tiny) horizontal plane is fitted at the point of the hit test.
   * </ul>
   */
  @JsonValue(1)
  localYUp;
}
