import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:lolprosapp/models/match_model.dart';
import 'package:lolprosapp/providers/lol_match_provider.dart';
import 'dart:developer';

class GamerScreen extends StatefulWidget {
  final String gamerName;
  const GamerScreen({Key? key, required this.gamerName}) : super(key: key);

  @override
  State<GamerScreen> createState() => _GamerScreenState();
}

final Uri _url = Uri.parse('https://ko.t1.gg/teams/league-of-legends');

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
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
          title: Text('LOL Pro-Gamer Info'),
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
                              Image.asset('images/players/${gameMatch.info.summonerName.replaceAll(' ', '_')}.png',
                                width: MediaQuery.of(context).size.width * 0.4,
                              ),
                              Expanded(
                                  child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Container(
                                        child: Text(gameMatch.info.summonerName,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        padding: EdgeInsets.all(15),
                                      ),
                                      Container(
                                        child: Text('Lv. ${gameMatch.info.summonerLevel}',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        padding: EdgeInsets.all(15),
                                      ),
                                      Container(
                                        child: Text('주 포지션 - ${gameMatch.info.lane}',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        padding: EdgeInsets.all(15),
                                      ),
                                    ],
                                  ),
                                )
                              )
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Text('최근 인게임 정보 - "${gameMatch.matchType}" (${gameMatch.detail.win ? "승리" : "패배"} - ${gameMatch.duration})',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    child: Text('Play Time : '
                                        '${dateFormat.format(gameMatch.startTime)} ~ '
                                        '${dateFormat.format(gameMatch.endTime)}'),
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('챔피언 : ${gameMatch.info.championName}'),
                                    Text('최종 레벨 : ${gameMatch.info.champLevel}'),
                                    Text('포지션 : ${gameMatch.info.lane}'),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('드래곤 : ${gameMatch.jungle.dragonTakedowns}'),
                                    Text('바론 : ${gameMatch.jungle.baronTakedowns}'),
                                    Text('장로 드래곤 : ${gameMatch.jungle.elderDragonMultikills}'),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Kill : ${gameMatch.kill.kills}'),
                                    Text('Assist : ${gameMatch.kill.assists}'),
                                    Text('Death : ${gameMatch.kill.deaths}'),
                                    Text('KDA : ${gameMatch.kill.kda.toStringAsFixed(2)}'),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                child: ElevatedButton(
                                  onPressed: _launchUrl,
                                  child: Center(
                                    child: Text('T1 팬페이지 방문하기',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                  ),
                                ),
                              )
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
                          SizedBox(width: MediaQuery.of(context).size.width * 0.4,),
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

