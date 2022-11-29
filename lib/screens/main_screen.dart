import 'package:flutter/material.dart';
import 'package:lolprosapp/models/pros_model.dart';
import 'package:lolprosapp/providers/lol_pros_provider.dart';
import 'package:lolprosapp/screens/gamer_screen.dart';
import 'dart:developer';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final Future<List<ProGamer>> futurePros;

  @override
  void initState() {
    log('ProGamer List Loading...');
    futurePros = lolPros();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FutureBuilder(
              future: futurePros,
              builder: (context, snapshot) {
                if(snapshot.connectionState == ConnectionState.done) {
                  List<ProGamer> proGamerList = snapshot.data as List<ProGamer>;

                  return ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: proGamerList.length,
                    itemBuilder: (BuildContext context, int index) {
                      ProGamer tmpProGamer = proGamerList[index];
                      return Container(
                        width: 100,
                        child: Card(
                          child: ListTile(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return GamerScreen(gamerName: tmpProGamer.gamer_nickname);
                                    }));
                              },
                              title: Text(
                                tmpProGamer.gamer_nickname,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              subtitle: Text('팀 정보 - ${tmpProGamer.team_name}'),
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/logo/tilogo.png'),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.15),
                                        spreadRadius: 0.01,
                                        blurRadius: 3,
                                        offset: Offset(1,0),
                                      )
                                    ]
                                ),
                              ),
                              trailing: Wrap(
                                children: <Widget> [
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'images/lane/icon-position-${tmpProGamer.lane_position.toLowerCase()}.png'
                                            )
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 5,
                                            offset: Offset(0, 3),
                                          )
                                        ]
                                    ),
                                    margin: EdgeInsets.only(top: 5),
                                    width: 30,
                                    height: 30,
                                  ),
                                  SizedBox(width: 20),
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.2,
                                    child: Text(
                                      tmpProGamer.lane_position,
                                      style: TextStyle(color: Colors.white,),
                                      textAlign: TextAlign.center,
                                    ),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent,
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 5,
                                            offset: Offset(0, 3),
                                          )
                                        ],
                                    ),
                                    margin: EdgeInsets.only(top: 3),
                                  ),
                                  SizedBox(width: 20),
                                  Container(
                                    child: Text(
                                      '상세 정보',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.blueGrey,
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 5,
                                            offset: Offset(0, 3),
                                          )
                                        ]
                                    ),
                                  ),
                                ],
                              )
                          ),
                        ),
                      );
                    },
                  );
                }

                return Center(
                  child: CircularProgressIndicator(),
                );
              }),
        ],
      ),
    );
  }
}
