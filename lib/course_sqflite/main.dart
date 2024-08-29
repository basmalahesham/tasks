import 'package:flutter/material.dart';
import 'package:optical/course_sqflite/add_note.dart';
import 'package:optical/course_sqflite/home.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sqflite Course',
      home: Home(),
      routes: {
        AddNote.routeName: (context) => AddNote(),
      },
    );
  }
}
