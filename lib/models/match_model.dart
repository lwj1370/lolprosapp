// import 'package:lolprosapp/models/participant/gamer_model.dart';

import 'participant/gamer_model.dart';

class GameMatch {

  final String matchId;
  final Gamer gamer;

  GameMatch({
    required this.matchId,
    required this.gamer,
  });

  factory GameMatch.fromJson(Map<String, dynamic> json) {

    print(json['gamer']);
    return GameMatch(
        matchId: json['matchId'],
        gamer: Gamer.fromJson(json['gamer']),
    );
  }

  @override
  String toString() {
    return 'GameMatch : { matchId : ${this.matchId}, ${this.gamer}}';
  }


}