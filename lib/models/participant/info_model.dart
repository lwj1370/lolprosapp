class Info {
  String summonerName;
  int summonerLevel;
  int champLevel;
  int championId;
  String championName;
  String lane;

  Info({
    required this.summonerName,
    required this.summonerLevel,
    required this.champLevel,
    required this.championId,
    required this.championName,
    required this.lane});

  factory Info.fromJson(Map<String, dynamic> json) => Info(
    summonerName: json["summonerName"],
    summonerLevel: json['summonerLevel'],
    champLevel: json['champLevel'],
    championId: json['championId'],
    championName: json['championName'],
    lane: json['lane'],
  );

}