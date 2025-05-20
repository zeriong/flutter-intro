import 'package:flutter/material.dart';

class StatefulApp extends StatefulWidget {
  const StatefulApp({super.key});

  @override
  State<StatefulApp> createState() => _StatefulAppState();
}

class _StatefulAppState extends State<StatefulApp> {
  int count = 0;

  void onClicked() {
    setState(() {
      count += 1;
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
              // 그냥 텍스트
              const Text(
                "Click Count",
                style: TextStyle(fontSize: 20),
              ),

              // 카운트를 보여 줄 요소
              Text(
                "$count",
                style: const TextStyle(fontSize: 20),
              ),

              // 아이콘 버튼
              IconButton(
                onPressed: onClicked,
                icon: const Icon(Icons.add_box_rounded),
                iconSize: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
