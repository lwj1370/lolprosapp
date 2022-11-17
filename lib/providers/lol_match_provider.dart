
import 'package:http/http.dart' as http;
// import 'package:lolprosapp/models/match_model.dart';
// import 'package:lolprosapp/models/participant/gamer_model.dart';

Future<String> lolGamer(String gamer) async {

  String url = 'http://127.0.0.1:8000/user/';
  String val = '';
  final http.Response response;
  try {
    response = await http.post(Uri.parse(url)).timeout(const Duration(seconds: 30),);
    print(response.statusCode);
    print(response.body);
    val = response.body;
  } catch(e) {
    print(e);
  }

  return val;
}