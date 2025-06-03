import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          Flexible(
            // flex 비율을 결정
            flex: 1,

            child: Container(),
          ),
          Flexible(
            // flex 비율을 결정 ( 2이기 때문에 위아래 Flexible 박스보다 2배 큼 )
            flex: 2,

            child: Container(),
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
