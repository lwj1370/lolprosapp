
import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:lolprosapp/models/match_model.dart';

Future<GameMatch> lolGamer(String gamer) async {

  String url = 'http://127.0.0.1:8000/lol/match-api';
  GameMatch gameMatch = GameMatch.empty();
  Map<String, String> body = new Map<String, String>();
  body['nickname'] = gamer;

  final http.Response response;
  try {
    response = await http.post(
      Uri.parse(url),
      body: body
      ).timeout(const Duration(seconds: 30),
    );

    gameMatch = GameMatch.fromJson(jsonDecode(response.body));
    log('Result : ${gameMatch.toString()}');
  } catch(e) {
    log('Error Occurred $e');
  }

  return gameMatch;
}