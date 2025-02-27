import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame_game/go_green.dart';
import 'package:flame_game/player.dart';

class GoGreenWorld extends World with HasGameRef<GoGreen> {
  @override
  FutureOr<void> onLoad() {
    super.onLoad();
    add(Player());  
  }
}
