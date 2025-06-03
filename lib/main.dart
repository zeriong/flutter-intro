import 'package:flutter/material.dart';
import 'package:flutter_intro/pomo_UI_practice/pomoApp.dart';
import 'package:flutter_intro/statefulWidget/statefulApp.dart';
import 'package:flutter_intro/statefulWidget/statefulApp2.dart';
import 'package:flutter_intro/statelessWidget/statelessApp.dart';

void main() {
  // runApp(const StatelessApp()); // 정적 app stateless app
  // runApp(const StatefulApp()); // 동적 app stateful app
  // runApp(const StatefulApp2()); // stateful app ( dispose, initState ) 등 학습
  runApp(const PomoApp()); // Pomo app UI
}
