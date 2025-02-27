import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame_game/game/go_green_game.dart';

class Bin extends SpriteComponent with HasGameRef<GoGreenGame> {
  @override
  FutureOr<void> onLoad() async {
    sprite = await Sprite.load("bin.png");
    size = Vector2.all(300);
    position = Vector2(0, (gameRef.size.y / 2) - (size.y / 2));
    anchor = Anchor.center;
  }
}
