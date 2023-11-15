package io.github.sceneview.sceneview_flutter

import android.content.Context
import android.graphics.BitmapFactory
import android.util.Log

class Convert {

    companion object {
        fun toAugmentedImages(
            context: Context,
            list: List<Map<String, Any>>
        ): List<SceneViewAugmentedImage> {
            val output = mutableListOf<SceneViewAugmentedImage>()
            try {
                list.forEach { map ->
                    if (map.containsKey("location") && map.containsKey("name")) {
                        val a = SceneViewAugmentedImage(
                            map["name"] as String,
                            context.assets.open(
                                Utils.getFlutterAssetKey(
                                    context,
                                    map["location"] as String,
                                )
                            )
                                .use(BitmapFactory::decodeStream)
                        )

                        output.add(a)
                    }
                }
            } catch (ex: Exception) {
                Log.e("Convert.toAugmentedImages", ex.toString());
            }
            return output
        }
    }

}