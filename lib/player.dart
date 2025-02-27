import 'dart:async';
import 'package:flame/components.dart';

class Player extends SpriteComponent {
  @override
  FutureOr<void> onLoad() async {
    sprite = await Sprite.load("closed.png");
    position = Vector2(0, 0);
    size = Vector2.all(100);
    anchor = Anchor.center;
  }
}
