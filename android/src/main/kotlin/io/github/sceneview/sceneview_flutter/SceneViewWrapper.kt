package io.github.sceneview.sceneview_flutter

import android.app.Activity
import android.content.Context
import android.util.Log
import android.view.View
import android.widget.FrameLayout
import androidx.lifecycle.Lifecycle
import com.google.ar.core.Config
import dev.romainguy.kotlin.math.Float3
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.platform.PlatformView
import io.github.sceneview.ar.ARSceneView
import io.github.sceneview.ar.arcore.addAugmentedImage
import io.github.sceneview.ar.arcore.getUpdatedPlanes
import io.github.sceneview.ar.node.AugmentedImageNode
import io.github.sceneview.model.ModelInstance
import io.github.sceneview.node.ModelNode
import io.github.sceneview.sceneview_flutter.flutter_models.FlutterPose
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch

class SceneViewWrapper(
    context: Context,
    private val activity: Activity,
    lifecycle: Lifecycle,
    messenger: BinaryMessenger,
    id: Int,
    arConfig: ARSceneViewConfig,
    private val augmentedImages: List<SceneViewAugmentedImage>,
) : PlatformView, MethodCallHandler {
    private val TAG = "SceneViewWrapper"
    private var sceneView: ARSceneView
    private val _mainScope = CoroutineScope(Dispatchers.Main)
    private val _channel = MethodChannel(messenger, "scene_view_$id")
    val _augmentedImageNodes = mutableListOf<AugmentedImageNode>()

    override fun getView(): View {
        Log.i(TAG, "getView:")
        return sceneView
    }

    override fun dispose() {
        Log.i(TAG, "dispose")
    }

    init {
        Log.i(TAG, "init")
        Log.i(TAG, "there are " + augmentedImages.size.toString() + " augmentedImages")

        sceneView = ARSceneView(context, sharedLifecycle = lifecycle)
        sceneView.apply {

            planeRenderer.isEnabled = arConfig.planeRenderer.isEnabled;
            planeRenderer.isVisible = arConfig.planeRenderer.isVisible;

            configureSession { session, config ->
                augmentedImages.forEach {
                    config.addAugmentedImage(session, it.name, it.bitmap)
                }

                config.lightEstimationMode = arConfig.lightEstimationMode
                config.depthMode = when (session.isDepthModeSupported(arConfig.depthMode)) {
                    true -> arConfig.depthMode
                    else -> Config.DepthMode.DISABLED
                }
                config.instantPlacementMode = arConfig.instantPlacementMode
            }
            onSessionUpdated = { session, frame ->
                val map = HashMap<String, Any>()
                val list = ArrayList<HashMap<String, Any>>()
                //map["planes"] =
                //frame.getUpdatedPlanes()
                //      .map { p -> hashMapOf<String, Any>("type" to p.type.ordinal) }.toList()

                frame.getUpdatedPlanes().forEach { p ->
                    val m = HashMap<String, Any>()
                    m["type"] = p.type.ordinal
                    m["centerPose"] = FlutterPose.fromPose(p.centerPose).toHashMap()
                    list.add(m)
                }

                map["planes"] = list;

                Log.i(TAG, map.toString());
                _channel.invokeMethod("onSessionUpdated", map);
                /*frame.getUpdatedPlanes()
                    .firstOrNull { it.type == Plane.Type.HORIZONTAL_UPWARD_FACING }
                    ?.let { plane ->
                        addAnchorNode(plane.createAnchor(plane.centerPose))
                    }*/
            }
            onSessionResumed = { session ->
                Log.i(TAG, "onSessionCreated")
            }
            onSessionFailed = { exception ->
                Log.e(TAG, "onSessionFailed : $exception")
            }
            onSessionCreated = { session ->
                Log.i(TAG, "onSessionCreated")
            }
            onTrackingFailureChanged = { reason ->
                Log.i(TAG, "onTrackingFailureChanged: $reason");
                _channel.invokeMethod("onTrackingFailureChanged", reason?.ordinal);
            }
        }
        sceneView.layoutParams = FrameLayout.LayoutParams(
            FrameLayout.LayoutParams.MATCH_PARENT,
            FrameLayout.LayoutParams.MATCH_PARENT
        )
        sceneView.keepScreenOn = true
        _channel.setMethodCallHandler(this)
    }

    private suspend fun addNode(flutterNode: FlutterSceneViewNode) {
        val node = buildNode(flutterNode) ?: return
        sceneView.addChildNode(node)
        //AnchorNode(sceneView.engine, anchor).apply {}
        Log.d("Done", "Done")
    }

    private suspend fun buildNode(flutterNode: FlutterSceneViewNode): ModelNode? {
        var model: ModelInstance? = null

        /*
                AnchorNode(sceneView.engine, anchor)
                    .apply {
                        isEditable = true
                        //isLoading = true
                        sceneView.modelLoader.loadModelInstance(
                            "https://sceneview.github.io/assets/models/DamagedHelmet.glb"
                        )?.let { modelInstance ->
                            addChildNode(
                                ModelNode(
                                    modelInstance = modelInstance,
                                    // Scale to fit in a 0.5 meters cube
                                    scaleToUnits = 0.5f,
                                    // Bottom origin instead of center so the model base is on floor
                                    centerOrigin = Position(y = -0.5f)
                                ).apply {
                                    isEditable = true
                                }
                            )
                        }
                        //isLoading = false
                        anchorNode = this
                    }
        */
        when (flutterNode) {
            is FlutterReferenceNode -> {
                val fileLocation = Utils.getFlutterAssetKey(activity, flutterNode.fileLocation)
                Log.d("SceneViewWrapper", fileLocation)
                model =
                    sceneView.modelLoader.loadModelInstance(fileLocation)
            }
        }
        if (model != null) {
            val modelNode = ModelNode(modelInstance = model, scaleToUnits = 1.0f).apply {
                transform(
                    position = flutterNode.position,
                    rotation = Float3(
                        flutterNode.rotation.x,
                        flutterNode.rotation.y,
                        flutterNode.rotation.z
                    ),
                    //scale = flutterNode.scale,
                )
                //scaleToUnitsCube(flutterNode.scaleUnits)
                // TODO: Fix centerOrigin
                //     centerOrigin(Position(x=-1.0f, y=-1.0f))
                //playAnimation()
            }
            return modelNode
        }
        return null
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "init" -> {
                result.success(null)
            }

            "addNode" -> {
                Log.i(TAG, "addNode")
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