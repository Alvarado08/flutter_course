import 'package:flutter/material.dart';
//import 'package:flutter_course/screens/screen_2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  // static creates a property that belongs to the class rather than to any instance of the class
  static const String routeName = 'screen_1';

  // final creates a property that belongs to an instance of the class
  // final String routeName = 'screen_1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen 1')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Named route navigation
            Navigator.pushNamed(context, 'screen_2');
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const Screen2()),
            // );
          },
          child: Text('Go to Screen 2'),
        ),
      ),
      backgroundColor: Colors.purple,
    );
  }
}
