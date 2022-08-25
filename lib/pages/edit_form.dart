import 'package:flutter/material.dart';
import 'package:group_simulator/widgets/simulator_form.dart';

class EditPage extends StatelessWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SimulatorForm(),
    );
  }
}
