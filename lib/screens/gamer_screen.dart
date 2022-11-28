import 'package:flutter/material.dart';
import 'package:lolprosapp/models/match_model.dart';
import 'package:lolprosapp/providers/lol_match_provider.dart';
import 'dart:developer';

class GamerScreen extends StatefulWidget {
  final String gamerName;
  const GamerScreen({Key? key, required this.gamerName}) : super(key: key);

  @override
  State<GamerScreen> createState() => _GamerScreenState();
}

class _GamerScreenState extends State<GamerScreen> {
  late final Future<GameMatch> futureGameMatch;

  @override
  void initState() {

    // widget은 _GamerScreenState의 상위 GameScreen을 의미함
    log('Requested Gamer Nickname : ${widget.gamerName}');
    futureGameMatch = lolMatch(widget.gamerName);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('LOL Pro-Gamers Info'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              child: FutureBuilder(
                future: futureGameMatch,
                builder: (context, snapshot) {
                  if(snapshot.connectionState == ConnectionState.done) {
                    GameMatch gameMatch = snapshot.data as GameMatch;
                    return Column(
                      children: [
                        Row(
                          children: [
                            Text(gameMatch.matchId)
                          ],
                        ),
                      ],
                    );
                  }

                  return Center(
                    child: CircularProgressIndicator(),
                  );
                })
            ),
          ],
        ),
      )
    );
  }
}

