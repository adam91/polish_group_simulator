import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
                          SizedBox(
                            height: 60,
                            width: 60.0,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'ARG',
                                counterText: "",
                              ),
                              maxLength: 2,
                              controller: argentina1Controller,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          SizedBox(
                            height: 60,
                            width: 60.0,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'SAU',
                                counterText: "",
                              ),
                              maxLength: 2,
                              controller: saudiarabia1Controller,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 60,
                            width: 60.0,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'MEX',
                                counterText: "",
                              ),
                              maxLength: 2,
                              controller: mexico1Controller,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          SizedBox(
                            width: 60.0,
                            height: 60,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'POL',
                                counterText: "",
                              ),
                              maxLength: 2,
                              controller: poland1Controller,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 60.0,
                            height: 60,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'POL',
                                counterText: "",
                              ),
                              maxLength: 2,
                              controller: poland2Controller,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          SizedBox(
                            width: 60.0,
                            height: 60,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'SAU',
                                counterText: "",
                              ),
                              maxLength: 2,
                              controller: saudiarabia2Controller,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 60.0,
                            height: 60,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'ARG',
                                counterText: "",
                              ),
                              maxLength: 2,
                              controller: argentina2Controller,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          SizedBox(
                            width: 60.0,
                            height: 60,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'MEX',
                                counterText: "",
                              ),
                              maxLength: 2,
                              controller: mexico2Controller,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 60.0,
                            height: 60,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'POL',
                                counterText: "",
                              ),
                              maxLength: 2,
                              controller: poland3Controller,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          SizedBox(
                            width: 60.0,
                            height: 60,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'ARG',
                                counterText: "",
                              ),
                              maxLength: 2,
                              controller: argentina3Controller,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 60.0,
                            height: 60,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'SAU',
                                counterText: "",
                              ),
                              maxLength: 2,
                              controller: saudiarabia3Controller,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 60.0,
                            height: 60,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'MEX',
                                counterText: "",
                              ),
                              maxLength: 2,
                              controller: mexico3Controller,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
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
                            poland1: int.parse(poland1Controller.text),
                            poland2: int.parse(poland2Controller.text),
                            poland3: int.parse(poland3Controller.text),
                            mexico1: int.parse(mexico1Controller.text),
                            mexico2: int.parse(mexico2Controller.text),
                            mexico3: int.parse(mexico3Controller.text),
                            argentina1: int.parse(argentina1Controller.text),
                            argentina2: int.parse(argentina2Controller.text),
                            argentina3: int.parse(argentina3Controller.text),
                            saudiarabia1:
                                int.parse(saudiarabia1Controller.text),
                            saudiarabia2:
                                int.parse(saudiarabia2Controller.text),
                            saudiarabia3:
                                int.parse(saudiarabia3Controller.text),
                          );
                    },
                  ),
                ),
                Consumer<SimulatorProvider>(
                  builder: (context, simulator, _) {
                    Map<dynamic, dynamic> points = {
                      'Poland': {
                        'points': simulator.data.polandpoints,
                        'goalsfor': simulator.data.polandgoalsfor,
                        'goalsagainst': simulator.data.polandgoalsagainst
                      },
                      'Mexico': {
                        'points': simulator.data.mexicopoints,
                        'goalsfor': simulator.data.mexicogoalsfor,
                        'goalsagainst': simulator.data.mexicogoalsagainst
                      },
                      'Argentina': {
                        'points': simulator.data.argentinapoints,
                        'goalsfor': simulator.data.argentinagoalsfor,
                        'goalsagainst': simulator.data.argentinagoalsagainst
                      },
                      'Saudi Arabia': {
                        'points': simulator.data.saudiarabiapoints,
                        'goalsfor': simulator.data.saudiarabiagoalsfor,
                        'goalsagainst': simulator.data.saudiarabiagoalsagainst
                      },
                    };

                    var mapsort = Map.fromEntries(
                      points.entries.toList()
                        ..sort(
                          (e1, e2) {
                            int a = e1.value['points']
                                .compareTo(e2.value['points']);
                            if (a != 0) return a;
                            return e1.value['goalsfor']
                                .compareTo(e2.value['goalsfor']);
                          },
                        ),
                    );

                    return Text(
                        '''$mapsort Poland goals: ${simulator.data.polandgoalsfor}:${simulator.data.polandgoalsagainst} Points: ${simulator.data.polandpoints}
                           Mexico goals: ${simulator.data.mexicogoalsfor}:${simulator.data.mexicogoalsagainst} Points: ${simulator.data.mexicopoints}
                           Argentina goals: ${simulator.data.argentinagoalsfor}:${simulator.data.argentinagoalsagainst} Points:  ${simulator.data.argentinapoints}
                           Saudi Arabia goals: ${simulator.data.saudiarabiagoalsfor}:${simulator.data.saudiarabiagoalsagainst} Points: ${simulator.data.saudiarabiapoints}''');
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
