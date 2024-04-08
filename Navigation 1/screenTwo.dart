import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScreenTwo extends StatelessWidget {
  ScreenTwo({super.key});
  @override
  Widget build(BuildContext context) {
    final text = ModalRoute.of(context)!.settings.arguments as String;
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Screen two'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(text),
            ElevatedButton(
              onPressed: () {
                // Close the screen and return "Yes" as the result.
                Navigator.pop(context, 'Yes');
              },
              child: const Text('Go Back'),
            )
          ],
        ),
      ),
    ));
  }
}
