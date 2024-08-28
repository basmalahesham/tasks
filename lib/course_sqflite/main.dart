import 'package:flutter/material.dart';
import 'package:optical/course_sqflite/home.dart';
import 'package:optical/course_sqflite/simpleApp.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Sqflite Course',
      home: SimpleApp(),
    );
  }
}
