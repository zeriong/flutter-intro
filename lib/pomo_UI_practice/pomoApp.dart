import 'package:flutter/material.dart';
import 'package:flutter_intro/pomo_UI_practice/screen/home_screen.dart';

class PomoApp extends StatefulWidget {
  const PomoApp({super.key});

  @override
  State<PomoApp> createState() => _PomoAppState();
}

class _PomoAppState extends State<PomoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFE7626C),
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: const Color(0xFFE7626C),
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: Color(0xff232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: HomeScreen(),
    );
  }
}
