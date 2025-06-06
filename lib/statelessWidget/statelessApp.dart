import 'package:flutter/material.dart';
import 'package:flutter_intro/statelessWidget/widgets/button.dart';
import 'package:flutter_intro/statelessWidget/widgets/currencyCard.dart';

class StatelessApp extends StatelessWidget {
  const StatelessApp({super.key});

  // 초반에 이 위치에서 "cardList" 클래스를 선언해서 활용해봤지만
  // 초기 실행 시에만 변화를 확인할 수 있었다.
  // 실질적으로 hotreload에 포함되기 위해선 Widget 단위로 instance가 존재해야 한다.

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> cardList = [
      {
        "title": "Euro",
        "amount": "6 428",
        "currency": "EUR",
        "icon": Icons.euro_rounded,
        "isInverted": false,
      },
      {
        "title": "Bitcoin",
        "amount": "9 785",
        "currency": "BTC",
        "icon": Icons.currency_bitcoin,
        "isInverted": true,
      },
      {
        "title": "Dollar",
        "amount": "459",
        "currency": "USD",
        "icon": Icons.attach_money_outlined,
        "isInverted": false,
      }
    ];

    return MaterialApp(
      home: Scaffold(
        // custom color 지정할 때 0xFF + [ 컬러 코드 ] ( 아래는 코드: #181818 )
        backgroundColor: const Color(0xFF181818),

        // body
        body: SingleChildScrollView(
          child: Padding(
            // 전체를 페딩 위젯으로 감싸서 전체 페딩 적용

            // 페딩을 EdgeInsets.symmetric를 활용한다면 x, y 의 양방향으로 넣을 수 있음
            padding: const EdgeInsets.symmetric(
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

                for (var i = 0; i < cardList.length; i++)
                  CurrencyCard(
                    title: cardList[i]["title"],
                    amount: cardList[i]["amount"],
                    currency: cardList[i]["currency"],
                    icon: cardList[i]["icon"],
                    isInverted: cardList[i]["isInverted"],
                    order: i,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
