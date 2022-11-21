class Jungle {
  int baronTakedowns;
  int dragonTakedowns;
  int elderDragonMultikills;

  Jungle({
    required this.baronTakedowns,
    required this.dragonTakedowns,
    required this.elderDragonMultikills
  });

  factory Jungle.fromJson(Map<String, dynamic> json) => Jungle(
    baronTakedowns: json['baronTakedowns'],
    dragonTakedowns: json['dragonTakedowns'],
    elderDragonMultikills: json['elderDragonMultikills'],
  );

  factory Jungle.empty() => Jungle(
    baronTakedowns: 0,
    dragonTakedowns: 0,
    elderDragonMultikills: 0,
  );
}