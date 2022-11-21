class Kill {
  bool firstBloodAssist;
  bool firstBloodKill;
  int assists;
  int largestMultiKill;
  int participantId;
  int doubleKills;
  int tripleKills;
  int quadraKills;
  int pentaKills;
  int unrealKills;
  int kills;
  int deaths;
  double kda;
  int dragonKills;
  int baronKills;

  Kill({
    required this.firstBloodAssist,
    required this.firstBloodKill,
    required this.assists,
    required this.largestMultiKill,
    required this.participantId,
    required this.doubleKills,
    required this.tripleKills,
    required this.quadraKills,
    required this.pentaKills,
    required this.unrealKills,
    required this.kills,
    required this.deaths,
    required this.kda,
    required this.dragonKills,
    required this.baronKills,
  });

  factory Kill.fromJson(Map<String, dynamic> json) {

    return Kill(
      firstBloodAssist: json['firstBloodAssist'],
      firstBloodKill: json['firstBloodKill'],
      assists: json['assists'],
      largestMultiKill: json['largestMultiKill'],
      participantId: json['participantId'],
      doubleKills: json['doubleKills'],
      tripleKills: json['tripleKills'],
      quadraKills: json['quadraKills'],
      pentaKills: json['pentaKills'],
      unrealKills: json['unrealKills'],
      kills: json['kills'],
      deaths: json['deaths'],
      kda: json['kda'],
      dragonKills: json['dragonKills'],
      baronKills: json['baronKills'],
    );

  }

  factory Kill.empty() => Kill(
    firstBloodAssist: false,
    firstBloodKill: false,
    assists: 0,
    largestMultiKill: 0,
    participantId: 0,
    doubleKills: 0,
    tripleKills: 0,
    quadraKills: 0,
    pentaKills: 0,
    unrealKills: 0,
    kills: 0,
    deaths: 0,
    kda: 0.0,
    dragonKills: 0,
    baronKills: 0
  );

}