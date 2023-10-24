package io.github.sceneview.sceneview_flutter

import android.app.Activity
import android.content.Context
import android.graphics.Bitmap
import android.util.Log
import androidx.lifecycle.Lifecycle
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.StandardMessageCodec
import io.flutter.plugin.platform.PlatformView
import io.flutter.plugin.platform.PlatformViewFactory

class SceneViewFactory(private val activity: Activity, private val messenger: BinaryMessenger, private val lifecycle: Lifecycle) :
    PlatformViewFactory(StandardMessageCodec.INSTANCE) {
    override fun create(context: Context, viewId: Int, args: Any?): PlatformView {
        Log.d("Factory", "Creating new view instance")
        return SceneViewWrapper(context, activity, lifecycle, messenger, viewId)
    }
}