package io.github.sceneview.sceneview_flutter.flutter_models

import com.google.ar.core.Pose

class FlutterPose(private val translation: FloatArray, private val rotation: FloatArray) {

    fun toHashMap(): HashMap<String, Any> {
        val map: HashMap<String, Any> = HashMap<String, Any>()
        map["translation"] = convertFloatArray(translation)
        map["rotation"] = convertFloatArray(rotation)
        return map
    }

    private fun convertFloatArray(array: FloatArray): DoubleArray {
        val doubleArray = DoubleArray(array.size)
        for ((i, a) in array.withIndex()) {
            doubleArray[i] = a.toDouble()
        }
        return doubleArray
    }

    companion object{
        fun fromPose(pose: Pose): FlutterPose {
            return FlutterPose(pose.translation, pose.rotationQuaternion)
        }
    }

}