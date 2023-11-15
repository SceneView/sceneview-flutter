package io.github.sceneview.sceneview_flutter

import android.app.Activity
import android.content.Context
import android.util.Log
import androidx.lifecycle.Lifecycle
import com.google.ar.core.Config
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.StandardMessageCodec
import io.flutter.plugin.platform.PlatformView
import io.flutter.plugin.platform.PlatformViewFactory

class SceneViewFactory(
    private val activity: Activity,
    private val messenger: BinaryMessenger,
    private val lifecycle: Lifecycle,
) : PlatformViewFactory(StandardMessageCodec.INSTANCE) {
    override fun create(context: Context, viewId: Int, params: Any?): PlatformView {
        Log.d("Factory", "Creating new view instance")

        val p = params as Map<String, Any>
        val builder = SceneViewBuilder()
        if (p.containsKey("augmentedImages")) {
            builder.config.augmentedImages =
                Convert.toAugmentedImages(
                    context,
                    p["augmentedImages"] as List<Map<String, Any>>
                )
        }
        if (p.containsKey("lightEstimationMode")) {
            Log.i(
                "SceneViewFactory",
                "Config contains lightEstimationMode " + p["lightEstimationMode"]
            )
            builder.config.lightEstimationMode =
                Config.LightEstimationMode.values()[p["lightEstimationMode"] as Int]
        }
        return builder.build(context, activity, messenger, lifecycle, viewId);
        //return SceneViewWrapper(context, activity, lifecycle, messenger, viewId);
    }
}