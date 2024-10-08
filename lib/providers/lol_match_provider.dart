
import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:lolprosapp/models/match_model.dart';

Future<GameMatch> lolMatch(String gamer) async {

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

    log('Request Result : ${response.body}');
    gameMatch = GameMatch.fromJson(jsonDecode(utf8.decode(response.bodyBytes))['match']);
    log('Result : ${gameMatch.toString()}');
  } catch(e) {
    log('Error Occurred $e');
  }

  return gameMatch;
}