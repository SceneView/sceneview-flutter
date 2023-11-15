package io.github.sceneview.sceneview_flutter

import com.google.ar.core.Config

class ARSceneViewConfig {

    var augmentedImages = listOf<SceneViewAugmentedImage>()

    var lightEstimationMode = Config.LightEstimationMode.DISABLED


}