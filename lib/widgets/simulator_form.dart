import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:group_simulator/providers/simulator_provider.dart';
import 'package:group_simulator/widgets/custom_widgets.dart';

class SimulatorForm extends StatefulWidget {
  const SimulatorForm({Key? key}) : super(key: key);

  @override
  State<SimulatorForm> createState() => _SimulatorFormState();
}

class _SimulatorFormState extends State<SimulatorForm> {
  final formKey = GlobalKey<FormState>();
  final poland1Controller = TextEditingController();
  final poland2Controller = TextEditingController();
  final poland3Controller = TextEditingController();
  final mexico1Controller = TextEditingController();
  final mexico2Controller = TextEditingController();
  final mexico3Controller = TextEditingController();
  final argentina1Controller = TextEditingController();
  final argentina2Controller = TextEditingController();
  final argentina3Controller = TextEditingController();
  final saudiarabia1Controller = TextEditingController();
  final saudiarabia2Controller = TextEditingController();
  final saudiarabia3Controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    poland1Controller.dispose();
    poland2Controller.dispose();
    poland3Controller.dispose();
    mexico1Controller.dispose();
    mexico2Controller.dispose();
    mexico3Controller.dispose();
    argentina1Controller.dispose();
    argentina2Controller.dispose();
    argentina3Controller.dispose();
    saudiarabia1Controller.dispose();
    saudiarabia2Controller.dispose();
    saudiarabia3Controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      FlagBoxWidget(flagname: (flags['argentina']!)),
                      FlagBoxWidget(flagname: (flags['mexico']!)),
                      FlagBoxWidget(flagname: (flags['poland']!)),
                      FlagBoxWidget(flagname: (flags['argentina']!)),
                      FlagBoxWidget(flagname: (flags['poland']!)),
                      FlagBoxWidget(flagname: (flags['saudiarabia']!)),
                    ],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextFieldWidget(
                              countryShortcut: 'ARG',
                              controllername: argentina1Controller),
                          const SizedBox(width: 8.0),
                          TextFieldWidget(
                              countryShortcut: 'SAU',
                              controllername: saudiarabia1Controller)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextFieldWidget(
                              countryShortcut: 'MEX',
                              controllername: mexico1Controller),
                          const SizedBox(width: 8.0),
                          TextFieldWidget(
                              countryShortcut: 'POL',
                              controllername: poland1Controller)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextFieldWidget(
                              countryShortcut: 'POL',
                              controllername: poland2Controller),
                          const SizedBox(width: 8.0),
                          TextFieldWidget(
                              countryShortcut: 'SAU',
                              controllername: saudiarabia2Controller)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextFieldWidget(
                              countryShortcut: 'ARG',
                              controllername: argentina2Controller),
                          const SizedBox(width: 8.0),
                          TextFieldWidget(
                              countryShortcut: 'MEX',
                              controllername: mexico2Controller)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextFieldWidget(
                              countryShortcut: 'POL',
                              controllername: poland3Controller),
                          const SizedBox(width: 8.0),
                          TextFieldWidget(
                              countryShortcut: 'ARG',
                              controllername: argentina3Controller)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextFieldWidget(
                              countryShortcut: 'SAU',
                              controllername: saudiarabia3Controller),
                          TextFieldWidget(
                              countryShortcut: 'MEX',
                              controllername: mexico3Controller)
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      FlagBoxWidget(flagname: (flags['saudiarabia']!)),
                      FlagBoxWidget(flagname: (flags['poland']!)),
                      FlagBoxWidget(flagname: (flags['saudiarabia']!)),
                      FlagBoxWidget(flagname: (flags['mexico']!)),
                      FlagBoxWidget(flagname: (flags['argentina']!)),
                      FlagBoxWidget(flagname: (flags['mexico']!)),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 40,
                  width: 140,
                  child: ElevatedButton(
                    child: const Text('Check results!'),
                    onPressed: () {
                      context.read<SimulatorProvider>().updateSimulatorInfo(
                            poland1: int.tryParse(poland1Controller.text) ?? 0,
                            poland2: int.tryParse(poland2Controller.text) ?? 0,
                            poland3: int.tryParse(poland3Controller.text) ?? 0,
                            mexico1: int.tryParse(mexico1Controller.text) ?? 0,
                            mexico2: int.tryParse(mexico2Controller.text) ?? 0,
                            mexico3: int.tryParse(mexico3Controller.text) ?? 0,
                            argentina1:
                                int.tryParse(argentina1Controller.text) ?? 0,
                            argentina2:
                                int.tryParse(argentina2Controller.text) ?? 0,
                            argentina3:
                                int.tryParse(argentina3Controller.text) ?? 0,
                            saudiarabia1:
                                int.tryParse(saudiarabia1Controller.text) ?? 0,
                            saudiarabia2:
                                int.tryParse(saudiarabia2Controller.text) ?? 0,
                            saudiarabia3:
                                int.tryParse(saudiarabia3Controller.text) ?? 0,
                          );
                    },
                  ),
                ),
                Consumer<SimulatorProvider>(
                  builder: (context, simulator, _) {
                    Map<dynamic, dynamic>? points = {
                      'Poland': {
                        'points': simulator.data.polandpoints,
                        'goalsfor': simulator.data.polandgoalsfor,
                        'goalsagainst': simulator.data.polandgoalsagainst,
                        'goalsdifference': simulator.data.polandgoalsdifference
                      },
                      'Mexico': {
                        'points': simulator.data.mexicopoints,
                        'goalsfor': simulator.data.mexicogoalsfor,
                        'goalsagainst': simulator.data.mexicogoalsagainst,
                        'goalsdifference': simulator.data.mexicogoalsdifference
                      },
                      'Argentina': {
                        'points': simulator.data.argentinapoints,
                        'goalsfor': simulator.data.argentinagoalsfor,
                        'goalsagainst': simulator.data.argentinagoalsagainst,
                        'goalsdifference':
                            simulator.data.argentinagoalsdifference
                      },
                      'Saudi Arabia': {
                        'points': simulator.data.saudiarabiapoints,
                        'goalsfor': simulator.data.saudiarabiagoalsfor,
                        'goalsagainst': simulator.data.saudiarabiagoalsagainst,
                        'goalsdifference':
                            simulator.data.saudiarabiagoalsdifference
                      },
                    };

                    var mapsort = Map.fromEntries(
                      points.entries.toList()
                        ..sort(
                          (b, a) {
                            int i =
                                a.value['points'].compareTo(b.value['points']);
                            if (i != 0) return i;

                            return a.value['goalsdifference']
                                .compareTo(b.value['goalsdifference']);
                          },
                        ),
                    );

                    return DataTable(
                      columnSpacing: 3.0,
                      columns: const [
                        DataColumn(
                          label: Text('Place'),
                        ),
                        DataColumn(
                          label: Text('Country'),
                        ),
                        DataColumn(
                          label: Text('Points'),
                        ),
                        DataColumn(
                          label: Text('Scored'),
                        ),
                        DataColumn(
                          label: Text('Lost'),
                        ),
                        DataColumn(
                          label: Text('+/-'),
                        ),
                      ],
                      rows: [
                        DataRow(cells: [
                          const DataCell(Text('1.')),
                          DataCell(Text(mapsort.keys.elementAt(0))),
                          DataCell(Text(
                              '${mapsort.values.elementAt(0).values.elementAt(0)}')),
                          DataCell(Text(
                              '${mapsort.values.elementAt(0).values.elementAt(1)}')),
                          DataCell(Text(
                              '${mapsort.values.elementAt(0).values.elementAt(2)}')),
                          DataCell(Text(
                              '${mapsort.values.elementAt(0).values.elementAt(3)}')),
                        ]),
                        DataRow(cells: [
                          const DataCell(Text('2.')),
                          DataCell(Text(mapsort.keys.elementAt(1))),
                          DataCell(Text(
                              '${mapsort.values.elementAt(1).values.elementAt(0)}')),
                          DataCell(Text(
                              '${mapsort.values.elementAt(1).values.elementAt(1)}')),
                          DataCell(Text(
                              '${mapsort.values.elementAt(1).values.elementAt(2)}')),
                          DataCell(Text(
                              '${mapsort.values.elementAt(1).values.elementAt(3)}')),
                        ]),
                        DataRow(cells: [
                          const DataCell(Text('3.')),
                          DataCell(Text(mapsort.keys.elementAt(2))),
                          DataCell(Text(
                              '${mapsort.values.elementAt(2).values.elementAt(0)}')),
                          DataCell(Text(
                              '${mapsort.values.elementAt(2).values.elementAt(1)}')),
                          DataCell(Text(
                              '${mapsort.values.elementAt(2).values.elementAt(2)}')),
                          DataCell(Text(
                              '${mapsort.values.elementAt(2).values.elementAt(3)}')),
                        ]),
                        DataRow(cells: [
                          const DataCell(Text('4.')),
                          DataCell(Text(mapsort.keys.elementAt(3))),
                          DataCell(Text(
                              '${mapsort.values.elementAt(3).values.elementAt(0)}')),
                          DataCell(Text(
                              '${mapsort.values.elementAt(3).values.elementAt(1)}')),
                          DataCell(Text(
                              '${mapsort.values.elementAt(3).values.elementAt(2)}')),
                          DataCell(Text(
                              '${mapsort.values.elementAt(3).values.elementAt(3)}')),
                        ]),
                      ],
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
