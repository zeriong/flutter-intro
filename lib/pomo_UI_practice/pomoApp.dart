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
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
