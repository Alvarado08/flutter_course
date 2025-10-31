import 'package:flutter/material.dart';
import 'package:flutter_course/screens/screen_1.dart';
import 'package:flutter_course/screens/screen_2.dart';
//import 'color_swap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Course',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      //home: const Screen1(),
      initialRoute: Screen1.routeName,
      routes: {
        // 'screen_1': (context) => const Screen1(),
        // 'screen_2': (context) => const Screen2(),
        Screen1.routeName: (context) => const Screen1(),
        Screen2.routeName: (context) => const Screen2(),
      },
    );
  }
}
