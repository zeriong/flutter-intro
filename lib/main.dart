import 'package:flutter/material.dart';
import 'package:flutter_intro/widgets/button.dart';

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
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),

          // children
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              ),

              // 박스를 추가하여 간격을 만듦
              const SizedBox(
                height: 120,
              ),

              // total balance text
              Text(
                "Total Balance",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),

              // 박스를 추가하여 간격을 만듦
              const SizedBox(
                height: 5,
              ),

              // total balance amount
              const Text(
                "\$5 194 482",
                style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),

              // 박스를 추가하여 간격을 만듦
              const SizedBox(
                height: 30,
              ),

              // 트랜스퍼, 리퀘스트 버튼들
              const Row(
                // space between 정렬
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Transfer 버튼
                  Button(
                    text: "Transfer",
                    textColor: Colors.black,
                    bgColor: Colors.amber,
                  ),

                  // Request 버튼
                  Button(
                    text: "Request",
                    textColor: Colors.white,
                    bgColor: Color(0xFF1F2123),
                  ),
                ],
              ),

              // 박스를 추가하여 간격을 만듦
              const SizedBox(
                height: 100,
              ),

              // Wallets / View All Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "Wallets",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 36),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8), fontSize: 18),
                  ),
                ],
              ),

              // 박스를 추가하여 간격을 만듦
              const SizedBox(
                height: 20,
              ),

              Container(
                decoration: BoxDecoration(color: Color(0xFF1F2123)),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Euro",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Text(
                                "6 428",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "EUR",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
