import 'dart:developer';

class MatchDetails {
  final bool win;
  final bool gameEndedInEarlySurrender;
  final bool gameEndedInSurrender;


  MatchDetails(
    this.win,
    this.gameEndedInEarlySurrender,
    this.gameEndedInSurrender,
  );

  factory MatchDetails.fromJson(Map<String, dynamic> json) {
    log("MatchDetails Class Json parsing Start");
    log("key list : ${json.keys}");
    return MatchDetails(
      json['win'],
      json['gameEndedInEarlySurrender'],
      json['gameEndedInSurrender'],
    );
  }

  factory MatchDetails.empty() => MatchDetails(
    false,
    false,
    false,
  );

  @override
  String toString() {
    return 'Gamer : '
        '{ win : $win, '
        'gameEndedInEarlySurrender : $gameEndedInEarlySurrender, '
        'gameEndedInSurrender : $gameEndedInSurrender, }';
  }
}