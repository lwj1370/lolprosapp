// import 'package:lolprosapp/models/participant/match_detail_model.dart';

import 'participant/match_detail_model.dart';
import 'package:lolprosapp/models/participant/item_model.dart';
import 'package:lolprosapp/models/participant/info_model.dart';
import 'package:lolprosapp/models/participant/damage_model.dart';
import 'package:lolprosapp/models/participant/jungle_model.dart';
import 'package:lolprosapp/models/participant/kill_model.dart';
import 'package:lolprosapp/models/participant/spell_model.dart';
import 'package:lolprosapp/models/participant/turret_model.dart';
import 'package:lolprosapp/models/participant/ward_model.dart';

class GameMatch {

  final String matchId;
  final String startTime;
  final String endTime;
  final String duration;
  final MatchDetails detail;
  final Item item;
  final Info info;
  final Damage damage;
  final Jungle jungle;
  final Kill kill;
  final Spell spell;
  final Turret turret;
  final Ward ward;

  GameMatch({
    required this.matchId,
    required this.startTime,
    required this.endTime,
    required this.duration,
    required this.detail,
    required this.item,
    required this.info,
    required this.damage,
    required this.jungle,
    required this.kill,
    required this.spell,
    required this.turret,
    required this.ward,
  });

  factory GameMatch.fromJson(Map<String, dynamic> json) {
    return GameMatch(
        matchId: json['matchId'],
        startTime: json['startTime'],
        endTime: json['endTime'],
        duration: json['duration'],
        detail: MatchDetails.fromJson(json['detail']),
        item: Item.fromJson(json['item']),
        info: Info.fromJson(json['info']),
        damage: Damage.fromJson(json['damage']),
        jungle: Jungle.fromJson(json['jungle']),
        kill: Kill.fromJson(json['kill']),
        spell: Spell.fromJson(json['spell']),
        turret: Turret.fromJson(json['turret']),
        ward: Ward.fromJson(json['ward'])
    );
  }

  factory GameMatch.empty() => GameMatch(
    matchId: '',
    startTime: '',
    endTime: '',
    duration: '',
    detail: MatchDetails.empty(),
    item: Item.empty(),
    info: Info.empty(),
    damage: Damage.empty(),
    jungle: Jungle.empty(),
    kill: Kill.empty(),
    spell: Spell.empty(),
    turret: Turret.empty(),
    ward: Ward.empty(),);

  @override
  String toString() {
    return 'GameMatch : '
        '{ matchId : $matchId, '
        'startTime : $startTime, '
        'endTime : $endTime, '
        'duration : $endTime, '
        'detail : $detail, '
        'item : $item, '
        'info : $info, '
        'damage : $damage, '
        'jungle : $jungle, '
        'kill : $kill, '
        'spell : $spell, '
        'turret : $turret, '
        'ward : $ward, }';
  }


}