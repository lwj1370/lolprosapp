
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lolprosapp/models/match_model.dart';
// import 'package:lolprosapp/models/participant/gamer_model.dart';

Future<GameMatch> lolGamer(String gamer) async {

  String url = 'http://127.0.0.1:8000/user/';
  GameMatch gameMatch = GameMatch.empty();
  final http.Response response;
  try {
    response = await http.post(Uri.parse(url)).timeout(const Duration(seconds: 30),);

    gameMatch = GameMatch.fromJson(jsonDecode(response.body));

  } catch(e) {
    print('Error Occurred $e');
  }

  return gameMatch;
}