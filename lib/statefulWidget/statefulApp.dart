import 'package:flutter/material.dart';

class StatefulApp extends StatefulWidget {
  const StatefulApp({super.key});

  @override
  State<StatefulApp> createState() => _StatefulAppState();
}

class _StatefulAppState extends State<StatefulApp> {
  // ? 단순 카운터에 대한 학습
  // int count = 0;
  //
  // void onClicked() {
  //   count += 1;
  //   // setState(() {
  //   //   count += 1;
  //   // });
  //   setState(() {});
  // }

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
              // 그냥 텍스트
              const Text(
                "Click Count",
                style: TextStyle(fontSize: 20),
              ),

              // // 카운트를 보여 줄 요소
              // Text(
              //   "$count",
              //   style: const TextStyle(fontSize: 20),
              // ),

              // 카운트 시 배열 내부에 추가하여 Column의 자식으로서 하나씩 추가렌더링이 됨
              for (var n in numbers) Text('$n'),

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
