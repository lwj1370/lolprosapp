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

  factory Turret.fromJson(Map<String, dynamic> json) => Turret(
      firstTowerAssist: json['firstTowerAssist'],
      firstTowerKill: json['firstTowerKill'],
      turretKills: json['turretKills'],
      turretTakedowns: json['turretTakedowns'],
      turretsLost: json['turretsLost']);
}