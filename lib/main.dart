import 'package:flame/flame.dart';
import 'package:flame_game/app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  Flame.device.setPortrait();
  runApp(GameApp());
}
