package io.github.sceneview.sceneview_flutter

import android.R
import android.app.Activity
import android.app.Application
import android.content.Context
import android.os.Bundle
import android.util.Log
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import androidx.fragment.app.FragmentActivity
import androidx.fragment.app.FragmentManager
import androidx.lifecycle.Lifecycle
import com.google.ar.core.Config
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.platform.PlatformView
import io.github.sceneview.ar.ARSceneView
import io.github.sceneview.model.Model
import io.github.sceneview.node.ModelNode
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers


class CustomArSceneView(
    private val context: Context,
    private val a: Activity,
    private val l: Lifecycle
) : ARSceneView(context) {

    override val lifecycle: Lifecycle
        get() = l
}

class SceneViewWrapper(
    context: Context,
    private val activity: Activity,
    private val lifecycle: Lifecycle,
    private val messenger: BinaryMessenger,
    id: Int,
) : PlatformView, MethodCallHandler {
    private val TAG = "SceneViewWrapper"
    private var sceneView: ARSceneView
    private val _mainScope = CoroutineScope(Dispatchers.Main)
    private lateinit var activityLifecycleCallbacks: Application.ActivityLifecycleCallbacks
    private val _channel = MethodChannel(messenger, "scene_view_$id")

    init {
        Log.i(TAG, "init")



        /*
                val mView = View(context)
                val params = LinearLayout.LayoutParams(
                    LinearLayout.LayoutParams.WRAP_CONTENT,
                    LinearLayout.LayoutParams.WRAP_CONTENT
                )
                myLInearLayout.setOrientation(LinearLayout.VERTICAL)
                mView.layoutParams = params
                mView.setBackgroundResource(R.color.white)
                myLInearLayout.addView(mView)
        */
        //val v: View = activity.layoutInflater.inflate(R.layout.rootView, null)
        //sceneView = v.findViewById<ArSceneView>(R.id.sceneView)


        sceneView = CustomArSceneView(context, activity, lifecycle)
        sceneView.apply {
            /*lightEstimation = Config.LightEstimationMode.ENVIRONMENTAL_HDR
            depthEnabled = true
            instantPlacementEnabled = true
            onArTrackingFailureChanged = { reason ->
                Log.i(TAG, reason.toString());
            }*/
        }
        //sceneView = ArSceneView(context)
        _channel.setMethodCallHandler(this)
        //setupLifeCycle()
        /*sceneView.onPause {
            lifecycle
        }
        sceneView.onResume {
            lifecycle
        }
        sceneView.onStart { lifecycle }*/
    }


    fun showNativeFragment(context: Context) {
        val id = 0x123456
        val vParams: ViewGroup.LayoutParams = FrameLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT
        )
        val container = FrameLayout(context)
        container.layoutParams = vParams
        container.id = id
        activity.addContentView(container, vParams)
        /*
                val fm: FragmentManager = (activity as FragmentActivity).supportFragmentManager
                fm.beginTransaction()
                    .replace(id, nativeFragment)
                    .commitAllowingStateLoss()
          */
    }

    override fun getView(): View {
        Log.i(TAG, "getView")
        return sceneView
    }

    override fun dispose() {
        Log.i(TAG, "dispose")
        //activity.application.unregisterActivityLifecycleCallbacks(this.activityLifecycleCallbacks)
    }

    private suspend fun addNode(flutterNode: FlutterSceneViewNode) {
        val hdrFile = "environments/studio_small_09_2k.hdr"
        /* sceneView.loadHdrIndirectLight(hdrFile, specularFilter = true) {
             intensity(30_000f)
         }
         sceneView.loadHdrSkybox(hdrFile) {
             intensity(50_000f)
         }*/

        val node = buildNode(flutterNode) ?: return
        sceneView.addChildNode(node)
        Log.d("Done", "Done")
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
                Log.d(TAG, "onActivityCreated")
            }

            override fun onActivityStarted(activity: Activity) {
                Log.d(TAG, "onActivityStarted")
            }

            override fun onActivityResumed(activity: Activity) {
                Log.d(TAG, "onActivityResumed")
                //sceneView.resume()
            }

            override fun onActivityPaused(activity: Activity) {
                Log.d(TAG, "onActivityPaused")
                //sceneView.pause()
            }

            override fun onActivityStopped(activity: Activity) {
                Log.d(TAG, "onActivityStopped")
            }

            override fun onActivitySaveInstanceState(activity: Activity, outState: Bundle) {}

            override fun onActivityDestroyed(activity: Activity) {
                Log.d(TAG, "onActivityDestroyed")
                //sceneView.destroy()
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
                Log.i(TAG, "addNode")
                //val flutterNode = FlutterSceneViewNode.from(call.arguments as Map<String, *>)
                //_mainScope.launch {
                //    addNode(flutterNode)
                //}
                result.success(null)
                return
            }

            else -> result.notImplemented()
        }
    }
}