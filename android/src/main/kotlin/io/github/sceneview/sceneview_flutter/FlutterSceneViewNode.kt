package io.github.sceneview.sceneview_flutter

import dev.romainguy.kotlin.math.Float3
import dev.romainguy.kotlin.math.Quaternion

abstract class FlutterSceneViewNode(
    val position: Float3 = Float3(0f, 0f, 0f),
    val rotation: Quaternion = Quaternion(0f, 0f, 0f),
    val scale: Float3 = Float3(0f, 0f, 0f),
    val scaleUnits: Float = 1.0f,
) {

    companion object {
        fun from(map: Map<String, *>): FlutterSceneViewNode {
            val fileLocation = map["fileLocation"] as String?
            if (fileLocation != null) {
                val p = FlutterPosition.from(map["position"] as List<Float>?)
                val r = FlutterRotation.from(map["rotation"] as List<Float>?)
                val s = FlutterScale.from(map["scale"] as List<Float>?)
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
    rotation: Quaternion,
    scale: Float3,
    scaleUnits: Float
) :
    FlutterSceneViewNode(position, rotation, scale, scaleUnits)

class FlutterPosition(val position: Float3) {
    companion object {
        fun from(list: List<Float>?): FlutterPosition {
            if (list == null) {
                return FlutterPosition(Float3(0f, 0f, 0f))
            }
            val x = (list[0] as Double).toFloat()
            val y = (list[1] as Double).toFloat()
            val z = (list[2] as Double).toFloat()
            return FlutterPosition(Float3(x, y, z))
        }
    }
}

class FlutterRotation(val rotation: Quaternion) {
    companion object {
        fun from(list: List<Float>?): FlutterRotation {
            if (list == null) {
                return FlutterRotation(Quaternion(0f, 0f, 0f, 0f))
            }
            val x = (list[0] as Double).toFloat()
            val y = (list[1] as Double).toFloat()
            val z = (list[2] as Double).toFloat()
            val w = (list[3] as Double).toFloat()
            return FlutterRotation(Quaternion(x, y, z, w))
        }
    }
}

class FlutterScale(val scale: Float3) {
    companion object {
        fun from(list: List<Float>?): FlutterScale {
            if (list == null) {
                return FlutterScale(Float3(0f, 0f, 0f))
            }
            val x = (list[0] as Double).toFloat()
            val y = (list[1] as Double).toFloat()
            val z = (list[2] as Double).toFloat()
            return FlutterScale(Float3(x, y, z))
        }
    }
}