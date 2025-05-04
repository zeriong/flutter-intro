import 'package:flutter/material.dart';

class Player {
  String? name;
  Player({required this.name});
}

void main() {
  var zeriong = Player(name: "zeriong");
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "Hey, Selena",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Welcome back",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
