import 'dart:developer';

class ProGamer {
  final String gamer_nickname;
  final String team_name;
  final String lane_position;

  ProGamer({
    required this.gamer_nickname,
    required this.team_name,
    required this.lane_position
  });

  factory ProGamer.fromJson(Map<String, dynamic> json) {
    log("ProGamer Class Json parsing Start");
    log("key list : ${json.keys}");
    return ProGamer(
      gamer_nickname: json['gamer_nickname'],
      team_name: json['team_name'],
      lane_position: json['lane_position']
    );
  }

  factory ProGamer.empty() {
    return ProGamer(
      gamer_nickname: '',
      team_name: '',
      lane_position: ''
    );
  }

}