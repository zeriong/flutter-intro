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

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  // init state는 단 한번만 호출되며 build 보다 먼저 나와야 한다.
  @override
  void initState() {
    super.initState();
    print("init state!");
  }

  // build
  @override
  Widget build(BuildContext context) {
    print("build!");
    return Text(
      "My Large Title",
      style: TextStyle(
          fontSize: 20, color: Theme.of(context).textTheme.titleLarge!.color),
    );
  }
}
