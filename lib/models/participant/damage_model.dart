class Damage {
  double damagePerMinute;
  int totalDamageDealt;
  int totalDamageDealtToChampions;
  int totalDamageShieldedOnTeammates;
  int totalDamageTaken;
  int totalHeal;
  int totalHealsOnTeammates;
  int totalMinionsKilled;
  int totalTimeCCDealt;
  int totalTimeSpentDead;
  int totalUnitsHealed;
  int magicDamageDealt;
  int magicDamageDealtToChampions;
  int physicalDamageDealt;
  int physicalDamageDealtToChampions;
  int physicalDamageTaken;
  int magicDamageTaken;

  Damage({
    required this.damagePerMinute,
    required this.totalDamageDealt,
    required this.totalDamageDealtToChampions,
    required this.totalDamageShieldedOnTeammates,
    required this.totalDamageTaken,
    required this.totalHeal,
    required this.totalHealsOnTeammates,
    required this.totalMinionsKilled,
    required this.totalTimeCCDealt,
    required this.totalTimeSpentDead,
    required this.totalUnitsHealed,
    required this.magicDamageDealt,
    required this.magicDamageDealtToChampions,
    required this.physicalDamageDealt,
    required this.physicalDamageDealtToChampions,
    required this.physicalDamageTaken,
    required this.magicDamageTaken,
  });

  factory Damage.fromJson(Map<String, dynamic> json) => Damage(
      damagePerMinute: json['damagePerMinute'],
      totalDamageDealt: json['totalDamageDealt'],
      totalDamageDealtToChampions: json['totalDamageDealtToChampions'],
      totalDamageShieldedOnTeammates: json['totalDamageShieldedOnTeammates'],
      totalDamageTaken: json['totalDamageTaken'],
      totalHeal: json['totalHeal'],
      totalHealsOnTeammates: json['totalHealsOnTeammates'],
      totalMinionsKilled: json['totalMinionsKilled'],
      totalTimeCCDealt: json['totalTimeCCDealt'],
      totalTimeSpentDead: json['totalTimeSpentDead'],
      totalUnitsHealed: json['totalUnitsHealed'],
      magicDamageDealt: json['magicDamageDealt'],
      magicDamageDealtToChampions: json['magicDamageDealtToChampions'],
      physicalDamageDealt: json['physicalDamageDealt'],
      physicalDamageDealtToChampions: json['physicalDamageDealtToChampions'],
      physicalDamageTaken: json['physicalDamageTaken'],
      magicDamageTaken: json['magicDamageTaken']
  );

  factory Damage.empty() => Damage(
    damagePerMinute: 0.0,
    totalDamageDealt: 0,
    totalDamageDealtToChampions: 0,
    totalDamageShieldedOnTeammates: 0,
    totalDamageTaken: 0,
    totalHeal: 0,
    totalHealsOnTeammates: 0,
    totalMinionsKilled: 0,
    totalTimeCCDealt: 0,
    totalTimeSpentDead: 0,
    totalUnitsHealed: 0,
    magicDamageDealt: 0,
    magicDamageDealtToChampions: 0,
    physicalDamageDealt: 0,
    physicalDamageDealtToChampions: 0,
    physicalDamageTaken: 0,
    magicDamageTaken: 0
  );

  @override
  String toString() {
    return
    '{ damagePerMinute : $damagePerMinute, '
    'totalDamageDealt : $totalDamageDealt, '
    'totalDamageDealtToChampions : $totalDamageDealtToChampions, '
    'totalDamageShieldedOnTeammates : $totalDamageShieldedOnTeammates, '
    'totalDamageTaken : $totalDamageTaken, '
    'totalHeal : $totalHeal, '
    'totalHealsOnTeammates : $totalHealsOnTeammates, '
    'totalMinionsKilled : $totalMinionsKilled, '
    'totalTimeCCDealt : $totalTimeCCDealt, '
    'totalTimeSpentDead : $totalTimeSpentDead, '
    'totalUnitsHealed : $totalUnitsHealed, '
    'magicDamageDealt : $magicDamageDealt, '
    'magicDamageDealtToChampions : $magicDamageDealtToChampions, '
    'physicalDamageDealt : $physicalDamageDealt, '
    'physicalDamageDealtToChampions : $physicalDamageDealtToChampions, '
    'physicalDamageTaken : $physicalDamageTaken, '
    'magicDamageTaken : $magicDamageTaken, }';
  }
}