import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/utils/ColorsApp.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String employeeName;
  final int employeeAge;
  final TextEditingController emptyController = TextEditingController();
  CustomTextField(
      {super.key,
      required this.hintText,
      this.employeeName = '',
      this.employeeAge = 0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      child: TextFormField(
        controller: emptyController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please Enter Data Required';
          }
        },
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10),
          hintText: hintText,
          hintStyle: TextStyle(
            color: ColorsApp().grayColor,
            fontSize: 8.sp,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorsApp().grayColor,
            ),
          ),
        ),
      ),
    );
  }
}
