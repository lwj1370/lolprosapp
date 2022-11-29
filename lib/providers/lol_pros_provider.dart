import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:lolprosapp/models/pros_model.dart';

Future<List<ProGamer>> lolPros() async {
  String url = 'http://127.0.0.1:8000/lol/pros';
  final http.Response response;
  List<ProGamer> proGamerList = [];
  try {
    response = await http.post(Uri.parse(url))
        .timeout(const Duration(seconds: 30));

    List<dynamic> list = jsonDecode(response.body);
    print('Pro-Gamer List size : ${list.length}');

    for(int i = 0; i < list.length; i++) {
      ProGamer proGamer = ProGamer(
          gamer_nickname: list.elementAt(i)['gamer_nickname'],
          team_name: list.elementAt(i)['team_name'],
          lane_position: list.elementAt(i)['lane_position']);
      proGamerList.add(proGamer);
    }

  } catch(e) {
    log('Error Occurred $e');
  }

  return proGamerList;
}