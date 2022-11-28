import 'dart:developer';

class Turret {
  bool firstTowerAssist;
  bool firstTowerKill;
  int turretKills;
  int turretTakedowns;
  int turretsLost;

  Turret({
    required this.firstTowerAssist,
    required this.firstTowerKill,
    required this.turretKills,
    required this.turretTakedowns,
    required this.turretsLost,
  });

  factory Turret.fromJson(Map<String, dynamic> json) {
    log("Turret Class Json parsing Start");
    log("key list : ${json.keys}");
    return Turret(
        firstTowerAssist: json['firstTowerAssist'],
        firstTowerKill: json['firstTowerKill'],
        turretKills: json['turretKills'],
        turretTakedowns: json['turretTakedowns'],
        turretsLost: json['turretsLost']);
  }

  factory Turret.empty() => Turret(
      firstTowerAssist: false,
      firstTowerKill: false,
      turretKills: 0,
      turretTakedowns: 0,
      turretsLost: 0
  );
}