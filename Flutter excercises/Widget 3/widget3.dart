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
        body: Container(child: Column(children: [
          Row(children: [
            Container(
              padding: EdgeInsets.all(20),decoration: BoxDecoration(color: Colors.black),

              child: const Column(children: [Icon(Icons.male, size: 20, color: Colors.white,),
              Text('Male', style: TextStyle(
                color: Colors.white
              ),)
              
              ],),
            ), 
            Container(
              padding: EdgeInsets.all(20),decoration: BoxDecoration(color: Colors.black),

              child: const Column(children: [Icon(Icons.male, size: 20, color: Colors.white,),
              Text('Male', style: TextStyle(
                color: Colors.white
              ),)
              
              ],),
            )
          ],)
        ],),),
      ),
    );
  }
}
