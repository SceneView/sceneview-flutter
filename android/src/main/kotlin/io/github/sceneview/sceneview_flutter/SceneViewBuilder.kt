package io.github.sceneview.sceneview_flutter

import android.app.Activity
import android.content.Context
import androidx.lifecycle.Lifecycle
import com.google.ar.core.Config.LightEstimationMode
import io.flutter.plugin.common.BinaryMessenger

class SceneViewBuilder {


    var config = ARSceneViewConfig()

    fun build(
        context: Context,
        activity: Activity,
        messenger: BinaryMessenger,
        lifecycle: Lifecycle,
        viewId: Int
    ): SceneViewWrapper {
        val controller =
            SceneViewWrapper(context, activity, lifecycle, messenger, viewId, config);
        //controller.init()
        //controller.setMyLocationEnabled(myLocationEnabled)
        return controller
    }

    fun setAugmentedImages(images: List<SceneViewAugmentedImage>) {
        config.augmentedImages = images
    }

    fun setLightEstimationMode(lightEstimationMode: LightEstimationMode) {
        config.lightEstimationMode = lightEstimationMode
    }
}