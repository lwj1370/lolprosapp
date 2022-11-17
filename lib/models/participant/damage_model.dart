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
}