import 'dart:async';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame_game/go_green.dart';
import 'package:flame_game/sprites/bin.dart';
import 'package:flame_game/sprites/player.dart';

class GoGreenWorld extends World with HasGameRef<GoGreen>, CollisionCallbacks {
  late final Player player;
  @override
  FutureOr<void> onLoad() {
    super.onLoad();
    player = Player();
    add(player);
    add(Bin());
  }
}
