import 'package:flame/game.dart';
import 'package:flame_game/constants.dart';
import 'package:flame_game/go_green.dart';
import 'package:flutter/material.dart';

class GameApp extends StatefulWidget {
  const GameApp({super.key});

  @override
  State<GameApp> createState() => _GameAppState();
}

class _GameAppState extends State<GameApp> {
  late final GoGreen game;

  @override
  void initState() {
    super.initState();
    game = GoGreen();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.yellow,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FittedBox(
              child: SizedBox(
                height: gameHeight,
                width: gameWidth,
                child: GameWidget(game: game),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
