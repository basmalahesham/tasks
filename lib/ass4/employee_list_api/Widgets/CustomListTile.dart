import 'package:flutter/material.dart';
import 'package:optical/ass4/employee_list_api/Model/EmployeeDataModel.dart';
import 'package:optical/ass4/employee_list_api/Screens/ChangingScreen.dart';
import 'package:optical/ass4/employee_list_api/Services/GetEmployeeData.dart';
import 'package:optical/ass4/employee_list_api/core/utils/styles.dart';

class CustomListTile extends StatefulWidget {
  final EmployeeDataModel model;
  const CustomListTile({
    super.key,
    required this.model,
  });

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.model.employeeName!,
        style: TextStyles.textStyle18,
      ),
      subtitle: Text(
        'Age:${widget.model.employeeAge}',
        style: TextStyles.textStyle14,
      ),
      trailing: ButtonBar(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
            onPressed: () async{
              setState(() {

              });
              try {
                await GetEmployeesData().updateData(widget.model.id);
                print('success');
              } catch (e) {
                print(e.toString());
              }
              Navigator.pushNamed(context, ChangingScreen.routeName);
            },
            child: Text(
              'Edit',
              style: TextStyles.textStyle18,
            ),
          ),
          IconButton(
              onPressed: () async {
                setState(() {});
                try {
                  await GetEmployeesData().deleteData(widget.model.id);
                  print('success');
                } catch (e) {
                  print(e.toString());
                }
              },
              icon: const Icon(Icons.restore_from_trash_outlined)),
        ],
      ),
    );
  }
}
