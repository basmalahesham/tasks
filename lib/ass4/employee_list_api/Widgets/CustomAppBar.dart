import 'package:flutter/material.dart';
import 'package:optical/ass4/employee_list_api/core/utils/ColorsApp.dart';
import 'package:optical/ass4/employee_list_api/core/utils/styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        title: Text(
          title,
          style: TextStyles.textStyle24,
        ),
        backgroundColor: ColorsApp().purpleColor,
        iconTheme: IconThemeData(
          color: ColorsApp().whiteColor,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
