import 'package:intl/intl.dart';
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
    DateFormat dateFormat = DateFormat('yyyy-MM-dd HH:mm');

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

                    return Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Image.asset('images/logo/tilogo.png'),
                              Expanded(
                                  child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text(gameMatch.info.summonerName),
                                      Text('${gameMatch.info.champLevel}'),
                                      Text(gameMatch.info.lane),
                                    ],
                                  ),
                                )
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                child: Text('최근 인게임 정보 (${gameMatch.detail.win ? "승리" : "패배"})'),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('게임 시간 : ${dateFormat.format(gameMatch.startTime)} ~ ${dateFormat.format(gameMatch.endTime)}'),
                                  Text('플레이 시간 : ${gameMatch.duration}'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('플레이 챔피언 : ${gameMatch.info.championName}'),
                                  Text('포지션 : ${gameMatch.info.lane}'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Kill : ${gameMatch.kill.kills}'),
                                  Text('Death : ${gameMatch.kill.deaths}'),
                                  Text('KDA : ${gameMatch.kill.kda}'),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }

                  return Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height * 0.35,),
                      Row(
                        children: [
                          SizedBox(width: MediaQuery.of(context).size.height * 0.6,),
                          CircularProgressIndicator(),
                        ],
                      )
                    ],
                  );
                })
            ),
          ],
        ),
      )
    );
  }
}

