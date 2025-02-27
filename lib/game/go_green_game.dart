
import 'package:flame/camera.dart';
import 'package:flame/game.dart';
import 'package:flame_game/constants.dart';
import 'package:flame_game/game/go_green_world.dart';
import 'package:flutter/material.dart';

class GoGreenGame extends FlameGame {
  GoGreenGame()
    : super(
        world: GoGreenWorld(),
        camera: CameraComponent.withFixedResolution(
          width: gameWidth,
          height: gameHeight,
        ),
      );

  

  @override
  Color backgroundColor() {
    return Colors.green;
  }
}
