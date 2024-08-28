import 'package:flutter/material.dart';
import 'package:optical/ass5/honey_boom/views/sign_in.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const String routeName = "splash";

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(
        seconds: 3,
      ),
      () => Navigator.of(context).pushReplacementNamed(SignIn.routeName),
    );
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/honeyBoom/splash.jpg',
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
