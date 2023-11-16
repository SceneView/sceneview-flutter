enum TrackingFailureReason {
  /**
   * Indicates expected motion tracking behavior. Always returned when {@link
   * com.google.ar.core.Camera#getTrackingState() } is {@link
   * com.google.ar.core.TrackingState#TRACKING TrackingState#TRACKING}. When {@link
   * com.google.ar.core.Camera#getTrackingState() } is {@link
   * com.google.ar.core.TrackingState#PAUSED TrackingState#PAUSED}, indicates that the session is
   * initializing normally.
   */
  NONE,
  /**
   * Motion tracking lost due to bad internal state. No specific user action is likely to resolve
   * this issue.
   */
  BAD_STATE,
  /**
   * Motion tracking lost due to poor lighting conditions. Ask the user to move to a more brightly
   * lit area. Android 12 (API level 31) or later, the user may have <a
   * href="https://developer.android.com/about/versions/12/behavior-changes-all#mic-camera-toggles">
   * disabled camera access</a>, causing ARCore to receive a blank camera feed.
   */
  INSUFFICIENT_LIGHT,
  /** Motion tracking lost due to excessive motion. Ask the user to move the device more slowly. */
  EXCESSIVE_MOTION,
  /**
   * Motion tracking lost due to insufficient visual features. Ask the user to move to a different
   * area and to avoid blank walls and surfaces without detail.
   */
  INSUFFICIENT_FEATURES,
  /**
   * Motion tracking paused because the camera is in use by another application. Tracking will
   * resume once this app regains priority, or once all apps with higher priority have stopped using
   * the camera. Prior to ARCore SDK 1.13, {@link com.google.ar.core.TrackingFailureReason#NONE
   * TrackingFailureReason#NONE} is returned in this case instead.
   */
  CAMERA_UNAVAILABLE;
}
