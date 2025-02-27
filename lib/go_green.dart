import 'dart:async';

import 'package:flame/game.dart';
import 'package:flame_game/constants.dart';
import 'package:flame_game/player.dart';
import 'package:flutter/material.dart';

class GoGreen extends FlameGame {
  GoGreen({super.children});

  @override
  FutureOr<void> onLoad() {
    super.onLoad();
    world.add(Player(position: Vector2(-gameWidth / 4, 0), radius: gameWidth / 4));
    world.add(
      Player(position: Vector2(gameWidth / 4, 0), radius: gameWidth / 4, color: Colors.black),
    );
  }

  @override
  Color backgroundColor() {
    return Colors.green;
  }
}
