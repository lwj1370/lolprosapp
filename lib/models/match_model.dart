// import 'package:lolprosapp/models/participant/gamer_model.dart';

import 'participant/gamer_model.dart';

class GameMatch {
  GameMatch({
    required this.matchId,
    required this.gamer,
  });

  final String matchId;
  final Gamer gamer;
}