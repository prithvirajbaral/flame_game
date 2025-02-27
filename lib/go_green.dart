import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class GoGreen extends FlameGame {
  GoGreen({super.children});

  @override
  Color backgroundColor() {
    return Colors.green;
  }
}
