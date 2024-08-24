import 'dart:math';

import 'package:flutter/material.dart';
import 'package:optical/ass2/bmi/views/second_view.dart';
import 'package:optical/ass2/bmi/views/widgets/custom_button.dart';
import 'package:optical/ass2/bmi/views/widgets/custom_container.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });
  static const String routeName = "second_home";

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double height = 40;
  int weight = 40;
  int age = 15;
  String? gender;
  final List<String> list = ['male', 'female'];

  @override
  Widget build(BuildContext context) {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                onTap: () {
                  setState(() {
                    gender = list[0];
                  });
                },
                child: CustomContainer(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: gender == list[0]
                        ? const Color(0xff1d253d)
                        : const Color(0xff171829),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.male,
                        color: Colors.white,
                        size: 100,
                      ),
                      Text(
                        'MALE',
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              CustomButton(
                onTap: () {
                  setState(() {
                    gender = list[1];
                  });
                },
                child: CustomContainer(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: gender == list[1]
                        ? const Color(0xff1d253d)
                        : const Color(0xff171829),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.female,
                        color: Colors.white,
                        size: 100,
                      ),
                      Text(
                        'FEMALE',
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          CustomContainer(
            width: 350,
            height: 175,
            decoration: BoxDecoration(
              color: const Color(0xff171829),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Column(
                children: [
                  const Text(
                    "HEIGHT",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '$height',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 50),
                      ),
                      const Text(
                        'cm',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Slider(
                    value: height,
                    min: 40,
                    max: 200,
                    divisions: 160,
                    activeColor: Colors.red,
                    label: height.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        height = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomContainer(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: const Color(0xff171829),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Column(
                    children: [
                      const Text(
                        'WEIGHT',
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                      Text(
                        '$weight',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 40),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomButton(
                            onTap: () {
                              if (weight > 40) {
                                setState(() {
                                  weight--;
                                });
                              }
                            },
                            child: CustomContainer(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: const Color(0xFF4C4F5E),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Text(
                                '-',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            ),
                          ),
                          CustomButton(
                            onTap: () {
                              setState(() {
                                weight++;
                              });
                            },
                            child: CustomContainer(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: const Color(0xFF4C4F5E),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Text(
                                '+',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              CustomContainer(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: const Color(0xff171829),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Column(
                    children: [
                      const Text(
                        'AGE',
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                      Text(
                        '$age',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 40),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomButton(
                            onTap: () {
                              if (age > 15) {
                                setState(() {
                                  age--;
                                });
                              }
                            },
                            child: CustomContainer(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: const Color(0xFF4C4F5E),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Text(
                                '-',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            ),
                          ),
                          CustomButton(
                            onTap: () {
                              setState(() {
                                age++;
                              });
                            },
                            child: CustomContainer(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: const Color(0xFF4C4F5E),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Text(
                                '+',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            onTap: () {
              double bmi = weight / pow(height / 100, 2);
              String bmiResult = bmi.toStringAsFixed(1);
              String resultText = getResult(bmi);
              String interpretation = getInterpretation(bmi);
              Navigator.pushNamed(
                context,
                SecondView.routeName,
                arguments: BmiDetails(
                  resultText,
                  bmiResult,
                  interpretation,
                ),
              );
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

class BmiDetails {
  String resultText;
  String bmiResult;
  String interpretation;
  BmiDetails(this.resultText, this.bmiResult, this.interpretation);
}

String getResult(double bmi) {
  if (bmi >= 25) {
    return 'Overweight';
  } else if (bmi > 18.5) {
    return 'Normal';
  } else {
    return 'Underweight';
  }
}

String getInterpretation(double bmi) {
  if (bmi >= 25) {
    return 'You have a higher than normal body weight. Try to exercise more.';
  } else if (bmi >= 18.5) {
    return 'You have a normal body weight. Good job!';
  } else {
    return 'You have a lower than normal body weight. You can eat a bit more.';
  }
}
