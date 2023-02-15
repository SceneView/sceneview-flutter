package io.github.sceneview.sceneview_flutter

import android.util.Log

abstract class FlutterNode {

    companion object {
        fun from(map: Map<String, *>): FlutterNode {
            val fileLocation = map["fileLocation"] as String?
            if (fileLocation != null)
                return FlutterReferenceNode(fileLocation)
            throw Exception()
        }
    }
}


class FlutterReferenceNode(val fileLocation: String) : FlutterNode() {

}
