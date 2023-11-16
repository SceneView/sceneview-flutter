import 'package:flutter/material.dart';
import 'package:sceneview_flutter/arsceneview_config.dart';
import 'package:sceneview_flutter/augmented_image.dart';
import 'package:sceneview_flutter/depth_mode.dart';
import 'package:sceneview_flutter/instant_placement_mode.dart';
import 'package:sceneview_flutter/light_estimation_mode.dart';

import 'package:sceneview_flutter/sceneview_flutter.dart';
import 'package:sceneview_flutter/sceneview_node.dart';
import 'package:sceneview_flutter/tracking_failure_reason.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TrackingFailureReason? reason;

  bool posed = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Scene view example app'),
        ),
        body: Stack(
          children: [
            SceneView(
              arSceneviewConfig: ARSceneviewConfig(
                lightEstimationMode: LightEstimationMode.ambientIntensity,
                instantPlacementMode: InstantPlacementMode.disabled,
                depthMode: DepthMode.rawDepthOnly,
              ),
              augmentedImages: [
                AugmentedImage(
                  name: 'rabbit',
                  location: 'assets/augmentedimages/rabbit.jpg',
                ),
              ],
              onViewCreated: (controller) {
                print('flutter: onViewCreated');
                // controller.addNode(
                //   SceneViewNode(
                //     fileLocation: 'assets/models/MaterialSuite.glb',
                //     position: KotlinFloat3(z: -1.0),
                //     rotation: KotlinFloat3(x: 15),
                //   ),
                // );
              },
              onSessionUpdated: (frame) {
                print('onSessionUpdated: $frame');
                // if(!posed){
                //   controller.addNode(
                //     SceneViewNode(
                //       fileLocation: 'assets/models/MaterialSuite.glb',
                //       // position: frame.centerPose.
                //       // rotation: KotlinFloat3(x: 15),
                //     ),
                //   );
                // }
              },
              onTrackingFailureChanged: (reason) {
                print('onTrackingFailureChanged: $reason');
                if (this.reason != reason) {
                  setState(() {
                    this.reason = reason;
                  });
                }
              },
            ),
            if (reason != null && reason != TrackingFailureReason.NONE)
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  reason!.name,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
