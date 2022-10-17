import 'package:flame/components.dart';

class PlayerComponent extends SpriteComponent with HasGameRef {
  PlayerComponent() : super(size: Vector2.all(100.0));

  @override
  Future<void> onLoad() async {
    super.onLoad();
    sprite = await gameRef.loadSprite('idle.png');
    position = gameRef.size / 2;
  }
}
