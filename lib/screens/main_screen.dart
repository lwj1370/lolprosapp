import 'package:flutter/material.dart';
import 'package:lolprosapp/screens/gamer_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: <Widget>[
              Container(
                width: 100,
                child: Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return GamerScreen(gamerName: 'SKT T1 Faker');
                          }));
                    },
                    title: Text(
                      'SKT T1 Faker',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    subtitle: Text('팀 정보 - SKT T1 '),
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
                              image: AssetImage('images/lane/icon-position-middle.png')
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
                          child: Text(
                            'Mid',
                            style: TextStyle(color: Colors.white),
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
                              ]
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
              )
            ],
          ),
          // ElevatedButton(onPressed: () {
          //   Navigator.push(context,
          //       MaterialPageRoute(builder: (context) {
          //         return GamerScreen(gamerName: 'SKT T1 Faker');
          //       }));
          // }, child: Text('SKT T1 Faker'))
        ],
      ),
    );
  }
}
