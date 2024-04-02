import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50).copyWith(left: 20),
        child: Column(
          children: [
            Row(
              children: [
                const Column(children: [
                  Icon(
                    Icons.arrow_back,
                  )
                ]),
                Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: 240,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [Icon(Icons.upload)],
                ),
                Column(
                  children: [Icon(Icons.settings)],
                )
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/red.jpeg',
                )
              ],
            ),
            Row(
              children: [
                Text(
                  '1975 Red porche',
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [Icon(Icons.comment)],
                ),
                Column(
                  children: [Icon(Icons.share)],
                ),
                Column(
                  children: [Icon(Icons.thumb_down)],
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [Text('essential information')],
                ),
                Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: 180,
                      ),
                    )
                  ],
                ),

                Column(
                  children: [Text('1 of 3 done')],
                )
              ],
            ),
            Row(children: [
              Column(
                children: [
                  Icon(Icons.check)
                ],
              )
            ],)
          ],
        ),
      ),
    ));
  }
}
