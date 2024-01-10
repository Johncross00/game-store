import 'package:flutter/material.dart';
import 'package:game_store/models/game.dart';

class NewestGame extends StatelessWidget {
  NewestGame({super.key});
  final List<Game> games = Game.games();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(25),
      child: Column(
          children: games.map((game) => Container(
            padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(bottom: 20),
              child:
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(game.icon, width: 60,),
                  ),
                  Text(game.name)
                ],
          )
          )
          ).toList()
      ),
    );
  }
}
