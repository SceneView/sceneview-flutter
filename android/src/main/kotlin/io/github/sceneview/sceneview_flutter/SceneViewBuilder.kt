package io.github.sceneview.sceneview_flutter

import android.app.Activity
import android.content.Context
import android.util.Log
import androidx.lifecycle.Lifecycle
import io.flutter.plugin.common.BinaryMessenger

class SceneViewBuilder {

    var augmentedImages = listOf<SceneViewAugmentedImage>()
    lateinit var config: ARSceneViewConfig

    fun build(
        context: Context,
        activity: Activity,
        messenger: BinaryMessenger,
        lifecycle: Lifecycle,
        viewId: Int
    ): SceneViewWrapper {
        Log.i("SceneViewBuilder", config.toString());
        val controller =
            SceneViewWrapper(context, activity, lifecycle, messenger, viewId, config, augmentedImages);
        //controller.init()
        //controller.setMyLocationEnabled(myLocationEnabled)
        return controller
    }
}