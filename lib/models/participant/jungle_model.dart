import 'dart:developer';

class Jungle {
  int baronTakedowns;
  int dragonTakedowns;
  int elderDragonMultikills;

  Jungle({
    required this.baronTakedowns,
    required this.dragonTakedowns,
    required this.elderDragonMultikills
  });

  factory Jungle.fromJson(Map<String, dynamic> json) {
    log("Jungle Class Json parsing Start");
    log("key list : ${json.keys}");
    return Jungle(
      baronTakedowns: json['baronTakedowns'],
      dragonTakedowns: json['dragonTakedowns'],
      elderDragonMultikills: json['elderDragonMultikills'],
    );
  }

  factory Jungle.empty() => Jungle(
    baronTakedowns: 0,
    dragonTakedowns: 0,
    elderDragonMultikills: 0,
  );
}