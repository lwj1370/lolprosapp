import 'package:lolprosapp/models/participant/item_model.dart';
// import 'package:lolprosapp/models/participant/damage_model.dart';
// import 'package:lolprosapp/models/participant/info_model.dart';
// import 'package:lolprosapp/models/participant/jungle_model.dart';
// import 'package:lolprosapp/models/participant/kill_model.dart';
// import 'package:lolprosapp/models/participant/spell_model.dart';
// import 'package:lolprosapp/models/participant/turret_model.dart';
// import 'package:lolprosapp/models/participant/ward_model.dart';

class Gamer {
  final bool win;
  final bool gameEndedInEarlySurrender;
  final bool gameEndedInSurrender;
  final Item item;
  // final Info info;
  // final Damage damage;
  // final Jungle jungle;
  // final Kill kill;
  // final Spell spell;
  // final Turret turret;
  // final Ward ward;

  Gamer(
    this.win,
    this.gameEndedInEarlySurrender,
    this.gameEndedInSurrender,
    this.item,
    // this.info,
    // this.damage,
    // this.jungle,
    // this.kill,
    // this.spell,
    // this.turret,
    // this.ward
  );

  factory Gamer.empty() => Gamer(false, false, false, Item.empty());

  @override
  String toString() {
    return 'Gamer : {win : $win, gameEndedInEarlySurrender : $gameEndedInEarlySurrender, gameEndedInSurrender : $gameEndedInSurrender,'
        'item : $item }';
  }
}