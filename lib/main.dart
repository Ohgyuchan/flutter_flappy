import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'components/component.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final game = MyGame();
  runApp(
    GameWidget(
      game: game,
    ),
  );
}

class MyGame extends FlameGame {
  final BgComponent _bgComponent = BgComponent();
  final PlayerComponent _playerComponent = PlayerComponent();
  @override
  Future<void> onLoad() async {
    super.onLoad();
    await add(_bgComponent);
    await add(_playerComponent);
    _playerComponent.position = _bgComponent.size / 1.5;
    camera.followComponent(_playerComponent,
        worldBounds:
            Rect.fromLTRB(0, 0, _bgComponent.size.x, _bgComponent.size.y));
  }
}
