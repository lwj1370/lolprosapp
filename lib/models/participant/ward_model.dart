class Ward {
  int visionClearedPings;
  int visionScore;
  int visionWardsBoughtInGame;
  int wardsKilled;
  int wardsPlaced;

  Ward({
    required this.visionClearedPings,
    required this.visionScore,
    required this.visionWardsBoughtInGame,
    required this.wardsKilled,
    required this.wardsPlaced,
  });

  factory Ward.fromJson(Map<String, dynamic> json) => Ward(
    visionClearedPings: json['visionClearedPings'],
    visionScore: json['visionScore'],
    visionWardsBoughtInGame: json['visionWardsBoughtInGame'],
    wardsKilled: json['wardsKilled'],
    wardsPlaced: json['wardsPlaced']);

  factory Ward.empty() => Ward(
      visionClearedPings: 0,
      visionScore: 0,
      visionWardsBoughtInGame: 0,
      wardsKilled: 0,
      wardsPlaced: 0);
}