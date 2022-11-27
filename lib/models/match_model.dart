// import 'package:lolprosapp/models/participant/gamer_model.dart';

import 'participant/gamer_model.dart';

class GameMatch {

  final String matchId;
  final String startTime;
  final String endTime;
  final String duration;
  final MatchDetails match;

  GameMatch({
    required this.matchId,
    required this.startTime,
    required this.endTime,
    required this.duration,
    required this.match,
  });

  factory GameMatch.fromJson(Map<String, dynamic> json) {
    return GameMatch(
        matchId: json['matchId'],
        startTime: json['startTime'],
        endTime: json['endTime'],
        duration: json['duration'],
        match: MatchDetails.fromJson(json['match']),
    );
  }

  factory GameMatch.empty() => GameMatch(matchId: '', startTime: '', endTime: '', duration: '', match: MatchDetails.empty());

  @override
  String toString() {
    return 'GameMatch : { matchId : ${this.matchId}, startTime : ${this.startTime}, endTime : ${this.endTime}, duration : ${this.endTime}, gamer : ${this.match}}';
  }


}