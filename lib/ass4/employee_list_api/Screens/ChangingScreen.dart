import 'package:flutter/material.dart';
import 'package:optical/ass4/employee_list_api/core/utils/StringsApp.dart';
import 'package:optical/ass4/employee_list_api/Widgets/CustomAppBar.dart';
import 'package:optical/ass4/employee_list_api/Widgets/CustomTextField.dart';
import 'package:optical/ass4/employee_list_api/Widgets/SaveButton.dart';

class ChangingScreen extends StatelessWidget {
  ChangingScreen({super.key});
  static const routeName = '/ChangingScreen';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: CustomAppBar(
          title: StringsApp().changingScreenTitle,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(hintText: "Employee Name"),
            CustomTextField(hintText: "Employee Age"),
            SaveButton(formKey: _formKey),
          ],
        ),
      ),
    );
  }
}
