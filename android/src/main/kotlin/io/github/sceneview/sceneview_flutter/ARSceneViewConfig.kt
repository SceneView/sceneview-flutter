package io.github.sceneview.sceneview_flutter

import com.google.ar.core.Config

class ARSceneViewConfig(
    val lightEstimationMode: Config.LightEstimationMode,
    val instantPlacementMode: Config.InstantPlacementMode,
    val depthMode: Config.DepthMode,
    val planeRenderer: PlaneRenderer,
) {
    companion object {
        fun from(map: Map<String, Any>): ARSceneViewConfig {
            return ARSceneViewConfig(
                Config.LightEstimationMode.values()[map["lightEstimationMode"] as Int],
                Config.InstantPlacementMode.values()[map["instantPlacementMode"] as Int],
                Config.DepthMode.values()[map["depthMode"] as Int],
                PlaneRenderer.from(map["planeRenderer"] as Map<String, Any>)
            )
        }
    }

    override fun toString(): String {
        return "PlaneRenderer: ${planeRenderer}\n" +
                "instantPlacementMode: $instantPlacementMode\n" +
                "lightEstimationMode: $lightEstimationMode\n" +
                "depthMode: $depthMode\n"
    }
}