import 'dart:async';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame_game/game/go_green_game.dart';
import 'package:flame_game/sprites/player.dart';

class Bin extends SpriteComponent
    with HasGameRef<GoGreenGame>, CollisionCallbacks {
  @override
  FutureOr<void> onLoad() async {
    sprite = await Sprite.load("bin.png");
    size = Vector2.all(300);
    position = Vector2(0, (gameRef.size.y / 2) - (size.y / 2));
    anchor = Anchor.center;
    add(RectangleHitbox());
  }

  @override
  void onCollisionStart(
    Set<Vector2> intersectionPoints,
    PositionComponent other,
  ) {
    print("Collision detected with: ${other.runtimeType}");
    if (other is Player) {
      print("Player collided with bin! Removing player...");
      other.removeFromParent();
    }
    super.onCollisionStart(intersectionPoints, other);
  }
}
