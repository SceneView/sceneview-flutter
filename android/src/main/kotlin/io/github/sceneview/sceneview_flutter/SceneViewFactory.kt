package io.github.sceneview.sceneview_flutter

import android.app.Activity
import android.content.Context
import android.util.Log
import androidx.lifecycle.Lifecycle
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
        if(p.containsKey("arSceneviewConfig")){
            val c = p["arSceneviewConfig"] as Map<String,Any>
            builder.config = ARSceneViewConfig.from(c)
        }
        if (p.containsKey("augmentedImages")) {
            builder.augmentedImages =
                Convert.toAugmentedImages(
                    context,
                    p["augmentedImages"] as List<Map<String, Any>>
                )
        }

        return builder.build(context, activity, messenger, lifecycle, viewId);
        //return SceneViewWrapper(context, activity, lifecycle, messenger, viewId);
    }
}