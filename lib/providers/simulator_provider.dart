import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
    int? mexicopoints = 0,
    int? mexicogoalsfor = 0,
    int? mexicogoalsagainst = 0,
    int? argentinapoints = 0,
    int? argentinagoalsfor = 0,
    int? argentinagoalsagainst = 0,
    int? saudiarabiapoints = 0,
    int? saudiarabiagoalsfor = 0,
    int? saudiarabiagoalsagainst = 0,
  }) {
    _simulator
      ..poland1 = poland1 ?? 0
      ..poland2 = poland2 ?? 0
      ..poland3 = poland3 ?? 0
      ..mexico1 = mexico1 ?? 0
      ..mexico2 = mexico2 ?? 0
      ..mexico3 = mexico3 ?? 0
      ..argentina1 = argentina1 ?? 0
      ..argentina2 = argentina2 ?? 0
      ..argentina3 = argentina3 ?? 0
      ..saudiarabia1 = saudiarabia1 ?? 0
      ..saudiarabia2 = saudiarabia2 ?? 0
      ..saudiarabia3 = saudiarabia3 ?? 0
      ..polandpoints = ((poland1! > mexico1!) ? 3 : 0) +
          ((poland1 == mexico1) ? 1 : 0) +
          ((poland2! > saudiarabia2!) ? 3 : 0) +
          ((poland2 == saudiarabia2) ? 1 : 0) +
          ((poland3! > argentina3!) ? 3 : 0) +
          ((poland3 == argentina3) ? 1 : 0)
      ..polandgoalsfor = poland1 + poland2 + poland3
      ..polandgoalsagainst = mexico1 + saudiarabia2 + argentina3
      ..mexicopoints = ((poland1 < mexico1) ? 3 : 0) +
          ((poland1 == mexico1) ? 1 : 0) +
          ((mexico2! > argentina2!) ? 3 : 0) +
          ((mexico2 == argentina2) ? 1 : 0) +
          ((mexico3! > saudiarabia3!) ? 3 : 0) +
          ((mexico3 == saudiarabia3) ? 1 : 0)
      ..mexicogoalsfor = mexico1 + mexico2 + mexico3
      ..mexicogoalsagainst = poland1 + argentina2 + saudiarabia3
      ..argentinapoints = ((argentina1! > saudiarabia1!) ? 3 : 0) +
          ((argentina1 == saudiarabia1) ? 1 : 0) +
          ((argentina2 > mexico2) ? 3 : 0) +
          ((argentina2 == mexico2) ? 1 : 0) +
          ((argentina3 > poland3) ? 3 : 0) +
          ((argentina3 == poland3) ? 1 : 0)
      ..argentinagoalsfor = argentina1 + argentina2 + argentina3
      ..argentinagoalsagainst = saudiarabia1 + mexico2 + poland3
      ..saudiarabiapoints = ((argentina1 < saudiarabia1) ? 3 : 0) +
          ((argentina1 == saudiarabia1) ? 1 : 0) +
          ((saudiarabia2 > poland2) ? 3 : 0) +
          ((saudiarabia2 == poland2) ? 1 : 0) +
          ((mexico3 < saudiarabia3) ? 3 : 0) +
          ((mexico3 == saudiarabia3) ? 1 : 0)
      ..saudiarabiagoalsfor = saudiarabia1 + saudiarabia2 + saudiarabia3
      ..saudiarabiagoalsagainst = argentina1 + poland2 + mexico3;

    if (poland1 > mexico1) {
      polandpoints = (polandpoints! + 3);
    } else if (poland1 < mexico1) {
      mexicopoints = (mexicopoints! + 3);
    } else {
      polandpoints = (polandpoints! + 1);
      mexicopoints = (mexicopoints! + 1);
    }

    if (poland1 > mexico1) {
      polandpoints = (polandpoints! + 3);
    } else if (poland1 == mexico1) {
      polandpoints = (polandpoints! + 1);
    }

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
  int mexicopoints = 0;
  int mexicogoalsfor = 0;
  int mexicogoalsagainst = 0;
  int argentinapoints = 0;
  int argentinagoalsfor = 0;
  int argentinagoalsagainst = 0;
  int saudiarabiapoints = 0;
  int saudiarabiagoalsfor = 0;
  int saudiarabiagoalsagainst = 0;
}
