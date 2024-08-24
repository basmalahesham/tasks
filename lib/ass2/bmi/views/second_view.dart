import 'package:flutter/material.dart';
import 'package:optical/ass2/bmi/views/home_view.dart';
import 'package:optical/ass2/bmi/views/widgets/custom_button.dart';
import 'package:optical/ass2/bmi/views/widgets/custom_container.dart';

class SecondView extends StatelessWidget {
  const SecondView({super.key});

  static const String routeName = "second_view";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as BmiDetails;
    return Scaffold(
      backgroundColor: const Color(0xff080B1A),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Center(
            child: Text(
              'Your Result',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 50),
            ),
          ),
          CustomContainer(
            width: 350,
            height: 400,
            decoration: BoxDecoration(
              color: const Color(0xff171829),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      args.resultText,
                      style: const TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Text(
                      args.bmiResult,
                      style: const TextStyle(color: Colors.white, fontSize: 50),
                    ),
                    Text(
                      args.interpretation.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          CustomButton(
            onTap: () {
              Navigator.pop(context);
            },
            child: CustomContainer(
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: const BoxDecoration(color: Colors.red),
              child: const Center(
                child: Text(
                  'RECALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
