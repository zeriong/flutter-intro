import 'package:flutter/material.dart';
import 'package:flutter_intro/statefulWidget/statefulApp.dart';
import 'package:flutter_intro/statelessWidget/statelessApp.dart';

void main() {
  // runApp(const StatelessApp()); // 정적 app stateless app
  runApp(const StatefulApp()); // 동적 app stateful app
}
