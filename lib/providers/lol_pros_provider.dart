import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:lolprosapp/models/pros_model.dart';

Future<List<ProGamer>> lolPros() async {
  String url = 'http://127.0.0.1:8000/lol/pros';
  final http.Response response;
  List<ProGamer> proGamerList = List.empty();
  try {
    response = await http.post(Uri.parse(url))
        .timeout(const Duration(seconds: 30));
    // TODO: json array 형태로 파싱 필요
    print(jsonDecode(response.body));

  } catch(e) {
    log('Error Occurred $e');
  }

  return proGamerList;
}