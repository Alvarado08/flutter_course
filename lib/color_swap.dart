import 'package:flutter/material.dart';

class ColorSwap extends StatefulWidget {
  const ColorSwap({super.key});

  @override
  State<ColorSwap> createState() => _ColorSwapState();
}

class _ColorSwapState extends State<ColorSwap> {
  Color textColor = Colors.purple;

  void changeColor(Color color) {
    setState(() {
      textColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Color Change Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    changeColor(Colors.red);
                  },
                  child: Container(width: 100, height: 100, color: Colors.red),
                ),
                GestureDetector(
                  onTap: () {
                    changeColor(Colors.green);
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    changeColor(Colors.purple);
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text('Color', style: TextStyle(color: textColor, fontSize: 36)),
          ],
        ),
      ),
    );
  }
}
