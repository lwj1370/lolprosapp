import 'dart:developer';

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

  factory Info.fromJson(Map<String, dynamic> json) {
    log("Info Class Json parsing Start");
    log("key list : ${json.keys}");
    return Info(
      summonerName: json["summonerName"],
      summonerLevel: json['summonerLevel'],
      champLevel: json['champLevel'],
      championId: json['championId'],
      championName: json['championName'],
      lane: json['lane'],
    );
  }

  factory Info.empty() => Info(
      summonerName: '',
      summonerLevel: 0,
      champLevel: 0,
      championId: 0,
      championName: '',
      lane: '');

}