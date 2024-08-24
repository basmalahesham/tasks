import 'package:flutter/material.dart';
import 'package:optical/ass2/bmi/views/home_view.dart';
import 'package:optical/ass2/bmi/views/second_view.dart';

void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeView.routeName,
      routes: {
        HomeView.routeName: (context) => const HomeView(),
        SecondView.routeName: (context) => const SecondView(),
      },
    );
  }
}
