import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // 상수로 지정
  static const twentyFiveMinutes = 1500;

  int totalSeconds = twentyFiveMinutes; // 총 시간
  int totalPomodoros = 0; // 총 시간\
  bool isRunning = false; // 실행중 플래그

  late Timer timer; // 타이머

  // 타이머를 감소시키는 매서드
  void onTick(Timer timer) {
    // 타이머가 0이 되었다면 초기화 & pomodoros + 1 & stop timer
    if (totalSeconds == 0) {
      setState(() {
        // states reset
        isRunning = false;
        totalSeconds = twentyFiveMinutes;
        totalPomodoros += 1;
      });
      timer.cancel(); // 타이머 캔슬

      // 아닌 경우 지속적으로 타이머를 감소킴
    } else {
      setState(() {
        totalSeconds -= 1;
      });
    }
  }

  // 타이머 시작 매서드
  void onStartPressed() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      onTick,
    );

    // 실행중 플래그 세팅
    setState(() {
      isRunning = true;
    });
  }

  // 타이머 일시 정지 매서드
  void onPausePressed() {
    timer.cancel();

    // 실행중 플래그 세팅
    setState(() {
      isRunning = false;
    });
  }

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
                "$totalSeconds",
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
                onPressed: isRunning ? onPausePressed : onStartPressed,
                iconSize: 120,
                color: Theme.of(context).cardColor,
                icon: Icon(
                  isRunning
                      ? Icons.pause_circle_outline
                      : Icons.play_circle_outline,
                ),
              ),
            ),
          ),
          Flexible(
            // flex 비율을 결정
            flex: 1,

            child: Row(
              children: [
                // Expanded를 활용하면 width: 100% 가 됨
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      // 전체를 둥글게 하지 않고 상단 좌,우만 Radius 속성 지정
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: Theme.of(context).cardColor,
                    ),
                    child: Column(
                      // 중앙 정렬
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text(
                          "Pomodoros",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .color,
                          ),
                        ),
                        Text(
                          "$totalPomodoros",
                          style: TextStyle(
                            fontSize: 58,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .color,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
