import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optical/ass4/employee_list_api/Screens/ChangingScreen.dart';
import 'package:optical/ass4/employee_list_api/Screens/EmployeeScreen.dart';


void main() {
  runApp(ScreenUtilInit(
    builder: (child,context)=>
        DevicePreview(
          enabled: false,
          builder:(context)=>const MyApp(),
        ),
    minTextAdapt: true,
    splitScreenMode: true,
  ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: EmployeeScreen.routeName,
      routes: {
        EmployeeScreen.routeName:(context)=>const EmployeeScreen(),
        ChangingScreen.routeName:(context)=>ChangingScreen(),
      },

    ) ;
  }
}