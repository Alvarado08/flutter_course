import 'package:flutter/material.dart';
import 'package:flutter_course/screens/screen_2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen 1')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Screen2()),
            );
          },
          child: Text('Go to Screen 2'),
        ),
      ),
      backgroundColor: Colors.purple,
    );
  }
}
