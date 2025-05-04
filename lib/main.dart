import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // custom color 지정할 때 0xFF + [ 컬러 코드 ] ( 아래는 코드: #181818 )
        backgroundColor: const Color(0xFF181818),

        // body
        body: Padding(
          // 전체를 페딩 위젯으로 감싸서 전체 페딩 적용

          // 페딩을 EdgeInsets.symmetric를 활용한다면 x, y 의 양방향으로 넣을 수 있음
          padding: const EdgeInsets.symmetric(horizontal: 40),

          // children
          child: Column(
            children: [
              // 박스를 추가하여 간격을 만듦
              const SizedBox(
                height: 80,
              ),

              // 헤더 Row
              Row(
                // Row의 Align을 end로 설정 ( justify-content: end 와 유사 )
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    // 해당 컬럼 item 내부 정렬을 end로 설정 ( justify-content: end 와 유사 )
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "Hey, Selena",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "Welcome back",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
