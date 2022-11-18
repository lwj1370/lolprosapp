
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lolprosapp/models/match_model.dart';
// import 'package:lolprosapp/models/participant/gamer_model.dart';

Future<String> lolGamer(String gamer) async {

  String url = 'http://127.0.0.1:8000/user/';
  String val = '';
  final http.Response response;
  try {
    response = await http.post(Uri.parse(url)).timeout(const Duration(seconds: 30),);

    GameMatch gameMatch = GameMatch.fromJson(jsonDecode(response.body));
    print(gameMatch);
  } catch(e) {
    print(e);
  }

  return val;
}