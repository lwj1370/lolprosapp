class Spell {
  int abilityUses;
  int spell1Casts;
  int spell2Casts;
  int spell3Casts;
  int spell4Casts;

  Spell({
    required this.abilityUses,
    required this.spell1Casts,
    required this.spell2Casts,
    required this.spell3Casts,
    required this.spell4Casts,
  });

  factory Spell.fromJson(Map<String, dynamic> json) => Spell(
    abilityUses: json['abilityUses'],
    spell1Casts: json['spell1Casts'],
    spell2Casts: json['spell2Casts'],
    spell3Casts: json['spell3Casts'],
    spell4Casts: json['spell4Casts'],
  );

  factory Spell.empty() => Spell(
    abilityUses: 0,
    spell1Casts: 0,
    spell2Casts: 0,
    spell3Casts: 0,
    spell4Casts: 0
  );
}