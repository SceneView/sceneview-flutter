package io.github.sceneview.sceneview_flutter

import android.app.Activity
import android.app.Application
import android.content.Context
import android.os.Bundle
import android.util.Log
import android.view.View
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.platform.PlatformView
import io.github.sceneview.SceneView
import io.github.sceneview.ar.ArSceneView
//import io.github.sceneview.loaders.loadHdrIndirectLight
//import io.github.sceneview.loaders.loadHdrSkybox
import io.github.sceneview.model.Model
import io.github.sceneview.node.ModelNode
//import io.github.sceneview.nodes.ModelNode
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch

class SceneViewWrapper(
    context: Context,
    private val activity: Activity,
    private val messenger: BinaryMessenger,
    id: Int,
) : PlatformView, MethodCallHandler {
    private val sceneView: ArSceneView = ArSceneView(context)
    private val _mainScope = CoroutineScope(Dispatchers.Main)
    private lateinit var activityLifecycleCallbacks: Application.ActivityLifecycleCallbacks
    private val _channel = MethodChannel(messenger, "scene_view_$id")

    init {
        _channel.setMethodCallHandler(this)
        setupLifeCycle()
        //sceneView.pause()
        //sceneView.resume()
    }

    override fun getView(): View {
        return sceneView
    }

    override fun dispose() {
        activity.application.unregisterActivityLifecycleCallbacks(this.activityLifecycleCallbacks)
    }

    private suspend fun addNode(flutterNode: FlutterSceneViewNode) {
        val hdrFile = "environments/studio_small_09_2k.hdr"
       /* sceneView.loadHdrIndirectLight(hdrFile, specularFilter = true) {
            intensity(30_000f)
        }
        sceneView.loadHdrSkybox(hdrFile) {
            intensity(50_000f)
        }

        val node = buildNode(flutterNode) ?: return
        sceneView.addChildNode(node)
        Log.d("Done", "Done")*/
    }

    private suspend fun buildNode(flutterNode: FlutterSceneViewNode): ModelNode? {
        var model: Model? = null
        /*when (flutterNode) {
            is FlutterReferenceNode -> {
                val fileLocation = Utils.getFlutterAssetKey(activity, flutterNode.fileLocation)
                Log.d("SceneViewWrapper", fileLocation)
                model =
                    sceneView.modelLoader.loadModel(fileLocation)
            }
        }
        if (model != null) {
            val modelNode = ModelNode(sceneView, model).apply {
                transform(
                    position = flutterNode.position,
                    rotation = flutterNode.rotation,
                    //scale = flutterNode.scale,
                )
                scaleToUnitsCube(flutterNode.scaleUnits)
                // TODO: Fix centerOrigin
                //     centerOrigin(Position(x=-1.0f, y=-1.0f))
                playAnimation()
            }
            return modelNode
        }*/
        return null
    }

    private fun setupLifeCycle() {
        activityLifecycleCallbacks = object : Application.ActivityLifecycleCallbacks {
            override fun onActivityCreated(activity: Activity, savedInstanceState: Bundle?) {
                Log.d("c", "c")
            }

            override fun onActivityStarted(activity: Activity) {
                Log.d("s", "s")
            }

            override fun onActivityResumed(activity: Activity) {
                Log.d("Wrapper", "Resumed")
                //sceneView.resume()
            }

            override fun onActivityPaused(activity: Activity) {
                Log.d("Wrapper", "Paused")
                //sceneView.pause()
            }

            override fun onActivityStopped(activity: Activity) {

            }

            override fun onActivitySaveInstanceState(activity: Activity, outState: Bundle) {}

            override fun onActivityDestroyed(activity: Activity) {
                Log.d("Wrapper", "Destroyed")
                sceneView.destroy()
            }
        }

        activity.application.registerActivityLifecycleCallbacks(this.activityLifecycleCallbacks)
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "init" -> {
                result.success(null)
            }
            "addNode" -> {
                val flutterNode = FlutterSceneViewNode.from(call.arguments as Map<String, *>)
                _mainScope.launch {
                    addNode(flutterNode)
                }
                result.success(null)
                return
            }
            else -> result.notImplemented()
        }
    }
}