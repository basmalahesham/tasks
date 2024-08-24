import 'package:flutter/material.dart';
import 'package:optical/ass4/employee_list_api/Model/EmployeeDataModel.dart';
import 'package:optical/ass4/employee_list_api/Widgets/CustomListTile.dart';
import 'package:optical/ass4/employee_list_api/core/utils/ColorsApp.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
    required this.list,
  });

  final List<EmployeeDataModel> list;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return CustomListTile(
          model: list[index],
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          indent: 10,
          endIndent: 10,
          color: ColorsApp().grayColor,
          thickness: 2,
        );
      },
    );
  }
}
