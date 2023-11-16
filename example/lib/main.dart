import 'package:flutter/material.dart';
import 'package:sceneview_flutter/augmented_image.dart';
import 'package:sceneview_flutter/light_estimation_mode.dart';

import 'package:sceneview_flutter/sceneview_flutter.dart';
import 'package:sceneview_flutter/sceneview_node.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
              lightEstimationMode: LightEstimationMode.AMBIENT_INTENSITY,
              augmentedImages: [
                AugmentedImage(name: 'rabbit',location: 'assets/augmentedimages/rabbit.jpg', ),
              ],
              onViewCreated: (controller) {
                print('flutter: onViewCreated');
                controller.addNode(
                  SceneViewNode(
                    fileLocation: 'assets/models/MaterialSuite.glb',
                    position: KotlinFloat3(z: -1.0),
                    rotation: KotlinFloat3(x: 15),
                  ),
                );
              },
              onSessionUpdated: (text){
                print('onSessionUpdated: $text');
              },
              onTrackingFailureChanged: (reason){
                print('onTrackingFailureChanged: $reason');
              },
            ),
          ],
        ),
      ),
    );
  }
}
