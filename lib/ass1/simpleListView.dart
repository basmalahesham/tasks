import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> list = [
    'GreatHand',
    'ChurchEdge',
    'DutchWhole',
    'MassTent',
    'ScriptGrade',
    'SilkStrength',
    'GreenMass',
    'BreakJet',
    'ThighPalm',
    'CoachDepth',
    'GreatHand',
    'ChurchEdge',
    'DutchWhole',
    'MassTent',
    'ScriptGrade',
    'SilkStrength',
    'GreenMass',
    'BreakJet',
    'ThighPalm',
    'CoachDepth',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Startup Name Generator',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8, bottom: 8),
          child: Text(
            list[index],
            style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.black54),
          ),
        ),
        separatorBuilder: (context, index) => const Divider(
          color: Colors.grey,
        ),
        itemCount: list.length,
      ),
    );
  }
}
