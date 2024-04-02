
import 'package:flutter/material.dart';

void main() {
  runApp(const Widget2());
}

class Widget2 extends StatelessWidget {
  const Widget2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
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
                      flex: 2,
                      child: Container(
                        width: 50,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [Text('Cart')],
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Icon(Icons.card_travel_outlined)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
