import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      required this.width,
      required this.height,
      required this.child,
      this.text,
      this.decoration});

  final double width;
  final double height;
  final Widget child;
  final String? text;
  final Decoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: decoration,
      child: Center(
        child: child,
      ),
    );
  }
}
