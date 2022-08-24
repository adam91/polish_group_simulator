import 'package:flutter/material.dart';
import 'package:group_simulator/pages/home_screen.dart';

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
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
            child: const Text('Test page - not used yet'),
          ),
        ],
      ),
    );
  }
}
