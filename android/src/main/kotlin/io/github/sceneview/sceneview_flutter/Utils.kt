package io.github.sceneview.sceneview_flutter

import android.content.Context
import android.content.res.AssetManager
import android.util.Log
import io.flutter.FlutterInjector
import io.flutter.embedding.engine.loader.FlutterLoader
import io.flutter.view.FlutterMain


class Utils {
    companion object{
        fun getFlutterAssetKey(context:Context, flutterAsset: String): String {
            Log.d("Utils", flutterAsset)
            //val assetManager: AssetManager = context.assets
            val loader = FlutterLoader()
            loader.startInitialization(context)
            return loader.getLookupKeyForAsset(flutterAsset)
            //val fd = assetManager.openFd(key)

        }
    }
}