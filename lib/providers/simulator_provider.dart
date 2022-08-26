import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

int scoreEqualityValue(left, right) => left == right ? 1 : 0;
int scoreBetterValue(left, right) => left > right ? 3 : 0;

class SimulatorProvider extends ChangeNotifier {
  final _simulator = Simulator();

  Simulator get data => _simulator;

  void updateSimulatorInfo({
    int? poland1 = 0,
    int? poland2 = 0,
    int? poland3 = 0,
    int? mexico1 = 0,
    int? mexico2 = 0,
    int? mexico3 = 0,
    int? argentina1 = 0,
    int? argentina2 = 0,
    int? argentina3 = 0,
    int? saudiarabia1 = 0,
    int? saudiarabia2 = 0,
    int? saudiarabia3 = 0,
    int? polandpoints = 0,
    int? polandgoalsfor = 0,
    int? polandgoalsagainst = 0,
    int? polandgoalsdifference = 0,
    int? mexicopoints = 0,
    int? mexicogoalsfor = 0,
    int? mexicogoalsagainst = 0,
    int? mexicogoalsdifference = 0,
    int? argentinapoints = 0,
    int? argentinagoalsfor = 0,
    int? argentinagoalsagainst = 0,
    int? argentinagoalsdifference = 0,
    int? saudiarabiapoints = 0,
    int? saudiarabiagoalsfor = 0,
    int? saudiarabiagoalsagainst = 0,
    int? saudiarabiagoalsdifference = 0,
  }) {
    _simulator
      ..poland1 = poland1!
      ..poland2 = poland2!
      ..poland3 = poland3!
      ..mexico1 = mexico1!
      ..mexico2 = mexico2!
      ..mexico3 = mexico3!
      ..argentina1 = argentina1!
      ..argentina2 = argentina2!
      ..argentina3 = argentina3!
      ..saudiarabia1 = saudiarabia1!
      ..saudiarabia2 = saudiarabia2!
      ..saudiarabia3 = saudiarabia3!
      ..polandpoints = scoreBetterValue(poland1, mexico1) +
          scoreEqualityValue(poland1, mexico1) +
          scoreBetterValue(poland2, saudiarabia2) +
          scoreEqualityValue(poland2, saudiarabia2) +
          scoreBetterValue(poland3, mexico3) +
          scoreEqualityValue(poland3, argentina3)
      ..polandgoalsfor = poland1 + poland2 + poland3
      ..polandgoalsagainst = mexico1 + saudiarabia2 + argentina3
      ..polandgoalsdifference =
          poland1 + poland2 + poland3 - mexico1 - saudiarabia2 - argentina3
      ..mexicopoints = scoreBetterValue(mexico1, poland1) +
          scoreEqualityValue(poland1, mexico1) +
          scoreBetterValue(mexico2, argentina2) +
          scoreEqualityValue(argentina2, mexico2) +
          scoreBetterValue(mexico3, saudiarabia3) +
          scoreEqualityValue(saudiarabia3, mexico3)
      ..mexicogoalsfor = mexico1 + mexico2 + mexico3
      ..mexicogoalsagainst = poland1 + argentina2 + saudiarabia3
      ..mexicogoalsdifference =
          mexico1 + mexico2 + mexico3 - poland1 - argentina2 - saudiarabia3
      ..argentinapoints = scoreBetterValue(argentina1, saudiarabia1) +
          scoreEqualityValue(argentina1, saudiarabia1) +
          scoreBetterValue(argentina2, mexico2) +
          scoreEqualityValue(argentina2, mexico2) +
          scoreBetterValue(argentina3, poland3) +
          scoreEqualityValue(argentina3, poland3)
      ..argentinagoalsfor = argentina1 + argentina2 + argentina3
      ..argentinagoalsagainst = saudiarabia1 + mexico2 + poland3
      ..argentinagoalsdifference = argentina1 +
          argentina2 +
          argentina3 -
          saudiarabia1 -
          mexico2 -
          poland3
      ..saudiarabiapoints = scoreBetterValue(saudiarabia1, argentina1) +
          scoreEqualityValue(argentina1, saudiarabia1) +
          scoreBetterValue(saudiarabia2, poland2) +
          scoreEqualityValue(poland2, saudiarabia2) +
          scoreBetterValue(saudiarabia3, mexico3) +
          scoreEqualityValue(saudiarabia3, mexico3)
      ..saudiarabiagoalsfor = saudiarabia1 + saudiarabia2 + saudiarabia3
      ..saudiarabiagoalsagainst = argentina1 + poland2 + mexico3
      ..saudiarabiagoalsdifference = saudiarabia1 +
          saudiarabia2 +
          saudiarabia3 -
          argentina1 -
          poland2 -
          mexico3;
    notifyListeners();
  }
}

class Simulator {
  int poland1 = 0;
  int poland2 = 0;
  int poland3 = 0;
  int mexico1 = 0;
  int mexico2 = 0;
  int mexico3 = 0;
  int argentina1 = 0;
  int argentina2 = 0;
  int argentina3 = 0;
  int saudiarabia1 = 0;
  int saudiarabia2 = 0;
  int saudiarabia3 = 0;
  int polandpoints = 0;
  int polandgoalsfor = 0;
  int polandgoalsagainst = 0;
  int polandgoalsdifference = 0;
  int mexicopoints = 0;
  int mexicogoalsfor = 0;
  int mexicogoalsagainst = 0;
  int mexicogoalsdifference = 0;
  int argentinapoints = 0;
  int argentinagoalsfor = 0;
  int argentinagoalsagainst = 0;
  int argentinagoalsdifference = 0;
  int saudiarabiapoints = 0;
  int saudiarabiagoalsfor = 0;
  int saudiarabiagoalsagainst = 0;
  int saudiarabiagoalsdifference = 0;
}
