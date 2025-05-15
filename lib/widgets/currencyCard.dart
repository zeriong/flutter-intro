import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String amount;
  final String currency;

  final double? iconSize;
  final double? iconOffsetX;
  final double? iconOffsetY;
  final double? cardOffsetX;
  final double? cardOffsetY;

  final Color? bgColor;
  final Color? titleColor;
  final Color? amountColor;
  final Color? currencyColor;
  final Color? iconColor;

  // 앞단에 언더스코어를 추가하면 private으로 지정되어 파라미터로 공개되지 않는다
  final _blackColor = const Color(0xFF000000);

  const CurrencyCard({
    super.key,
    required this.icon,
    required this.title,
    required this.amount,
    required this.currency,
    this.bgColor = const Color(0xFF1F2123),
    this.titleColor,
    this.amountColor,
    this.currencyColor,
    this.iconColor,
    this.iconSize,
    this.iconOffsetX,
    this.iconOffsetY,
    this.cardOffsetX,
    this.cardOffsetY,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(cardOffsetX ?? 0, cardOffsetY ?? 0),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: bgColor,
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
                      color: titleColor ?? Colors.white,
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
                          color: amountColor ?? Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        currency,
                        style: TextStyle(
                          color: currencyColor ?? Colors.white.withOpacity(0.7),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Transform.scale(
                  scale: 2.2,
                  child: Transform.translate(
                    offset: Offset(iconOffsetX ?? -5, iconOffsetY ?? 12),
                    child: Icon(
                      icon,
                      size: iconSize ?? 88,
                      color: iconColor ?? Colors.white,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
