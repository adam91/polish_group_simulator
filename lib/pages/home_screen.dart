import 'package:flutter/material.dart';
import 'package:group_simulator/pages/edit_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Hello, click to play simulator! :)'),
              const SizedBox(
                height: 50, // <-- SEE HERE
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EditPage()));
                },
                child: const Text('CLICK HERE'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
