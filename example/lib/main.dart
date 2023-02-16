import 'package:flutter/material.dart';
import 'dart:async';

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
        body: SceneView(
          onViewCreated: (controller) {
            controller.addNode(SceneViewNode(
              fileLocation: 'assets/models/MaterialSuite.glb',
              position: KotlinFloat3(z: -4.0),
              rotation: KotlinFloat3(x: 15),
            ));
          },
        ),
      ),
    );
  }
}
