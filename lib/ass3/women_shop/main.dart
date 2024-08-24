import 'package:flutter/material.dart';
import 'package:optical/ass3/women_shop/layout/home_layout.dart';
import 'package:optical/ass3/women_shop/views/second_view.dart';
import 'package:optical/ass3/women_shop/views/third_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeLayout.routeName,
      routes: {
        HomeLayout.routeName: (context) => const HomeLayout(),
        SecondView.routeName: (context) => const SecondView(),
        ThirdView.routeName: (context) => const ThirdView(),
      },
    );
  }
}
