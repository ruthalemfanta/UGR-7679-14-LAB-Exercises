import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('BMI CALCULATOR', style: TextStyle(
          fontSize: 12
        ) ,),
        backgroundColor:Color.fromARGB(255, 76, 33, 89),
        ),
      ),
    );
  }
}
