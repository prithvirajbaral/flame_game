import 'package:flame/game.dart';
import 'package:flame_game/go_green.dart';
import 'package:flutter/material.dart';

void main() {
  final game = GoGreen();
  runApp(
    GameWidget(game: game),
  );
}

