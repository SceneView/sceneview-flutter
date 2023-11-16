package io.github.sceneview.sceneview_flutter

class PlaneRenderer(val isEnabled: Boolean, val isVisible: Boolean) {

    companion object {

        fun from(map: Map<String, Any>): PlaneRenderer {
            return PlaneRenderer(
                map["isEnabled"] as Boolean,
                map["isVisible"] as Boolean,
            )
        }
    }


    override fun toString(): String {
        return "isVisible: $isVisible, isEnabled: $isEnabled"
    }
}