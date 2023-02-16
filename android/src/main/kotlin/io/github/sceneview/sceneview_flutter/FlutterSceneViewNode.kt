package io.github.sceneview.sceneview_flutter

import dev.romainguy.kotlin.math.Float3

abstract class FlutterSceneViewNode(
    val position: Float3 = Float3(0f, 0f, 0f),
    val rotation: Float3 = Float3(0f, 0f, 0f),
    val scale: Float3 = Float3(0f, 0f, 0f),
    val scaleUnits: Float = 1.0f,
) {

    companion object {
        fun from(map: Map<String, *>): FlutterSceneViewNode {
            val fileLocation = map["fileLocation"] as String?
            if (fileLocation != null) {
                val p = FlutterPosition.from(map["position"] as Map<String, Float>?)
                val r = FlutterRotation.from(map["rotation"] as Map<String, Float>?)
                val s = FlutterScale.from(map["scale"] as Map<String, Float>?)
                val scaleUnits = map["scaleUnits"] as Float?
                return FlutterReferenceNode(
                    fileLocation,
                    p.position,
                    r.rotation,
                    s.scale,
                    scaleUnits ?: 1.0f,
                )
            }
            throw Exception()
        }
    }
}


class FlutterReferenceNode(
    val fileLocation: String,
    position: Float3,
    rotation: Float3,
    scale: Float3,
    scaleUnits: Float
) :
    FlutterSceneViewNode(position, rotation, scale, scaleUnits)

class FlutterPosition(val position: Float3) {
    companion object {
        fun from(map: Map<String, Float>?): FlutterPosition {
            if (map == null) {
                return FlutterPosition(Float3(0f, 0f, 0f))
            }
            val x = (map["x"] as Double).toFloat()
            val y = (map["y"] as Double).toFloat()
            val z = (map["z"] as Double).toFloat()
            return FlutterPosition(Float3(x, y, z))
        }
    }
}

class FlutterRotation(val rotation: Float3) {
    companion object {
        fun from(map: Map<String, Float>?): FlutterRotation {
            if (map == null) {
                return FlutterRotation(Float3(0f, 0f, 0f))
            }
            val x = (map["x"] as Double).toFloat()
            val y = (map["y"] as Double).toFloat()
            val z = (map["z"] as Double).toFloat()
            return FlutterRotation(Float3(x, y, z))
        }
    }
}

class FlutterScale(val scale: Float3) {
    companion object {
        fun from(map: Map<String, Float>?): FlutterScale {
            if (map == null) {
                return FlutterScale(Float3(0f, 0f, 0f))
            }
            val x = (map["x"] as Double).toFloat()
            val y = (map["y"] as Double).toFloat()
            val z = (map["z"] as Double).toFloat()
            return FlutterScale(Float3(x, y, z))
        }
    }
}