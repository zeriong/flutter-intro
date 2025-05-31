import 'package:flutter/material.dart';

class StatefulApp2 extends StatefulWidget {
  const StatefulApp2({super.key});

  @override
  State<StatefulApp2> createState() => _StatefulAppState();
}

class _StatefulAppState extends State<StatefulApp2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
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
    return Text(
      "My Large Title",
      style: TextStyle(
          fontSize: 20, color: Theme.of(context).textTheme.titleLarge!.color),
    );
  }
}
