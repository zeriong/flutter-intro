import 'package:flutter/material.dart';

class StatefulApp2 extends StatefulWidget {
  const StatefulApp2({super.key});

  @override
  State<StatefulApp2> createState() => _StatefulAppState();
}

class _StatefulAppState extends State<StatefulApp2> {
  List<int> numbers = [];

  void onClicked() {
    setState(() {
      numbers.add(numbers.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 위젯
              MyLargeTitle(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatelessWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "My Large Title",
      style: TextStyle(fontSize: 20),
    );
  }
}
