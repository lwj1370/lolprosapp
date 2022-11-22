import 'package:flutter/material.dart';
import 'package:lolprosapp/models/match_model.dart';
import 'package:lolprosapp/providers/lol_match_provider.dart';

class GamerScreen extends StatelessWidget {
  GamerScreen({Key? key, required this.gamerName}) : super(key: key);

  final String gamerName;
  var lolResponse;
  GameMatch gameMatch = GameMatch.empty();

  @override
  void initState() {
    lolResponse = lolGamer(gamerName);

    lolResponse.then((value) => {
      gameMatch = value
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              children: [

              ],
            ),
          ],
        ),
      ),
    );
  }
}
