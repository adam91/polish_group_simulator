import 'package:flutter/material.dart';
import 'package:group_simulator/widgets/simulator_form.dart';

class EditForm extends StatelessWidget {
  const EditForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SimulatorForm(),
    );
  }
}
