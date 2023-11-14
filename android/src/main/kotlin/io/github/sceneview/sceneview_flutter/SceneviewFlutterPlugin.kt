package io.github.sceneview.sceneview_flutter

import android.app.Activity
import android.util.Log
import androidx.annotation.NonNull
import androidx.lifecycle.LifecycleOwner
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding


/** SceneviewFlutterPlugin */
class SceneviewFlutterPlugin : FlutterPlugin, ActivityAware {

    private val TAG = "SceneviewFlutterPlugin"

    /// The MethodChannel that will the communication between Flutter and native Android
    ///
    /// This local reference serves to register the plugin with the Flutter Engine and unregister it
    /// when the Flutter Engine is detached from the Activity
    private var flutterPluginBinding: FlutterPlugin.FlutterPluginBinding? = null

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        Log.i(TAG, "onAttachedToEngine")
        this.flutterPluginBinding = flutterPluginBinding
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        Log.i(TAG, "onDetachedFromEngine")
        this.flutterPluginBinding = null
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        Log.i(TAG, "onAttachedToActivity")
        val activity: Activity = binding.activity
        if (activity is LifecycleOwner) {
            Log.i(TAG, "activity is LifecycleOwner")
            flutterPluginBinding?.platformViewRegistry?.registerViewFactory(
                "SceneView",
                SceneViewFactory(
                    binding.activity,
                    flutterPluginBinding!!.binaryMessenger,
                    activity.lifecycle,
                )
            )
        }
    }

    override fun onDetachedFromActivityForConfigChanges() {
        Log.i(TAG, "onDetachedFromActivityForConfigChanges")
        onDetachedFromActivity()
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        Log.i(TAG, "onReattachedToActivityForConfigChanges")
        onAttachedToActivity(binding)
    }

    override fun onDetachedFromActivity() {
        Log.i(TAG, "onDetachedFromActivity")
    }
}
