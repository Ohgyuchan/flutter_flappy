import 'package:flame/components.dart';

class BgComponent extends SpriteComponent with HasGameRef {
  @override
  Future<void> onLoad() async {
    super.onLoad();
    sprite = await gameRef.loadSprite('assets/images/bg.png');
    size = sprite!.originalSize;
  }
}
