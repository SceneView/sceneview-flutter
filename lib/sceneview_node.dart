class SceneViewNode {
  final String fileLocation;
  final KotlinFloat3? position;
  final KotlinFloat3? rotation;
  final double? scale;

  SceneViewNode({
    required this.fileLocation,
    this.position,
    this.rotation,
    this.scale,
  });

  Map<String, dynamic> toMap() {
    final map = {
      'fileLocation': fileLocation,
      'position': position?.toMap(),
      'rotation': rotation?.toMap(),
      'scale': scale,
    };
    map.removeWhere((key, value) => value == null);
    return map;
  }
}

class KotlinFloat3 {
  final double x;
  final double y;
  final double z;

  KotlinFloat3({this.x = 0.0, this.y = 0.0, this.z = 0.0});

  toMap() {
    return <String, double>{
      'x': x,
      'y': y,
      'z': z,
    };
  }
}
