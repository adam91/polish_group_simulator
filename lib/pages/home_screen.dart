import 'package:flutter/material.dart';
import 'package:group_simulator/pages/edit_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Text('Witam państwa'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const EditForm()));
              },
              child: const Text('Simulator page'),
            ),
          ],
        ),
      ),
    );
  }
}
