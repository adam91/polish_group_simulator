import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:group_simulator/pages/edit_form.dart';
import 'package:group_simulator/providers/simulator_provider.dart';

class SimulatorPage extends StatefulWidget {
  const SimulatorPage({Key? key}) : super(key: key);

  @override
  State<SimulatorPage> createState() => _SimulatorPageState();
}

class _SimulatorPageState extends State<SimulatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push<MaterialPageRoute>(
                context,
                MaterialPageRoute(builder: (context) => const EditForm()),
              );
            },
            child: const Text(''),
          ),
          Consumer<SimulatorProvider>(
            builder: (context, simulator, _) {
              return const Text('');
            },
          ),
        ],
      ),
    );
  }
}
