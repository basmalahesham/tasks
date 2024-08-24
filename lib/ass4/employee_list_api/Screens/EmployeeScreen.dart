import 'package:flutter/material.dart';
import 'package:optical/ass4/employee_list_api/Model/EmployeeDataModel.dart';
import 'package:optical/ass4/employee_list_api/Services/GetEmployeeData.dart';
import 'package:optical/ass4/employee_list_api/Widgets/custom_list_view.dart';
import 'package:optical/ass4/employee_list_api/core/utils/StringsApp.dart';
import 'package:optical/ass4/employee_list_api/Widgets/CustomAppBar.dart';

class EmployeeScreen extends StatefulWidget {
  const EmployeeScreen({super.key});
  static const routeName = '/EmployeeScreen';

  @override
  State<EmployeeScreen> createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
  var future;
  @override
  void initState() {
    super.initState();
    future = GetEmployeesData().fetchEmployees();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: StringsApp().employeeScreenTitle,
      ),
      body: FutureBuilder<List<EmployeeDataModel>>(
          future: future,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return CustomListView(
                list: snapshot.data!,
              );
            } else if (snapshot.hasError) {
              return const Center(child: Text('oops there was an error, try later'));
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: ()async{
          setState(() {

          });
          try {
            await GetEmployeesData().createData();
            print('success');
          } catch (e) {
            print(e.toString());
          }
        },
        tooltip: 'Create',
        child: Icon(Icons.add),
      ),
    );
  }
}

