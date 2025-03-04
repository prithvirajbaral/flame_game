
import 'package:flame/camera.dart';
import 'package:flame/game.dart';
import 'package:flame_game/constants.dart';
import 'package:flutter/material.dart';

class GoGreen extends FlameGame {
  GoGreen()
    : super(
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
