import 'package:flutter/material.dart';
import 'package:optical/ass4/employee_list_api/core/utils/ColorsApp.dart';
import 'package:optical/ass4/employee_list_api/core/utils/StringsApp.dart';
import 'package:optical/ass4/employee_list_api/core/utils/styles.dart';

class SaveButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const SaveButton({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (formKey.currentState!.validate()) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Success updated Data')),
          );
        }
      },
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        backgroundColor: ColorsApp().purpleColor,
      ),
      child: Text(
        StringsApp().saveButton,
        style: TextStyles.textStyle24,
      ),
    );
  }
}
