import 'package:flutter/material.dart';
import 'package:optical/ass5/honey_boom/views/home_view.dart';
import 'package:optical/ass5/honey_boom/views/product_details.dart';
import 'package:optical/ass5/honey_boom/views/sign_in.dart';
import 'package:optical/ass5/honey_boom/views/splash_view.dart';

void main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        SignIn.routeName: (context) =>  const SignIn(),
        HomeView.routeName: (context) => const HomeView(),
        ProductDetails.routeName: (context) => ProductDetails(),
      },
    );
  }
}
//Color(0xfffdb100)

