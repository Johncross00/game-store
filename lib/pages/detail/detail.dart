import 'package:flutter/material.dart';

import '../../models/game.dart';
class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.game});
final Game game;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(game.name),
      ),
    );
  }
}
