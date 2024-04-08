import 'package:flutter/material.dart';
import 'package:lab3/screenTwo.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('screen one'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                child: Text("Next"),
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                }),
          ],
        ),
      ),
    );
  }
}
