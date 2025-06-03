import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void onPressed() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor, // 테마 지정
      body: Column(
        children: [
          Flexible(
            // flex 비율을 결정
            flex: 1,

            child: Container(
              // 최상단에 붙는 문제 해결
              alignment: Alignment.bottomCenter,

              child: Text(
                "25:00",
                style: TextStyle(
                  color: Theme.of(context).cardColor, // 테마 지정
                  fontSize: 89,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Flexible(
            // flex 비율을 결정 ( 2이기 때문에 위아래 Flexible 박스보다 2배 큼 )
            flex: 3,

            child: Center(
              child: IconButton(
                onPressed: onPressed,
                iconSize: 120,
                color: Theme.of(context).cardColor,
                icon: Icon(
                  Icons.play_circle_outline,
                ),
              ),
            ),
          ),
          Flexible(
            // flex 비율을 결정
            flex: 1,

            child: Container(),
          ),
        ],
      ),
    );
  }
}
