import 'dart:ffi';

import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String amount;
  final String currency;

  final double? iconSize;
  final Offset? iconOffset;
  final Offset? cardOffset;

  final bool isInverted;

  // 앞단에 언더스코어를 추가하면 private으로 지정되어 파라미터로 공개되지 않는다
  final _blackColor = const Color(0xFF000000);
  final _whiteColor = const Color(0xFFFFFFFF);

  const CurrencyCard({
    super.key,
    required this.icon,
    required this.title,
    required this.amount,
    required this.currency,
    this.iconSize,
    this.iconOffset,
    this.cardOffset,
    this.isInverted = false,
  });

  @override
  Widget build(BuildContext context) {
    // 변수로 할당하여 간략하게 공용화
    var innerContentColor = isInverted ? _blackColor : _whiteColor;

    // 위젯 반환
    return Transform.translate(
      offset: cardOffset ?? const Offset(0, 0),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          // card 배경색의 경우 inner content와 반전임
          color: isInverted ? _whiteColor : const Color(0xFF1F2123),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: innerContentColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: innerContentColor,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        currency,
                        style: TextStyle(
                          color: innerContentColor,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Transform.scale(
                  scale: 2.2,
                  child: Transform.translate(
                    offset: iconOffset ?? const Offset(-5, 12),
                    child: Icon(
                      icon,
                      size: iconSize ?? 88,
                      color: innerContentColor,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
