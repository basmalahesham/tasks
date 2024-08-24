import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optical/ass4/employee_list_api/core/utils/ColorsApp.dart';

abstract class TextStyles{
  static TextStyle textStyle24 = TextStyle(
    color: ColorsApp().whiteColor,
    fontWeight: FontWeight.bold,
    fontSize: 24.sp,
  );

  static TextStyle textStyle18 = TextStyle(
    color: ColorsApp().blackColor,
    fontWeight: FontWeight.bold,
    fontSize: 18.sp,
  );

  static TextStyle textStyle14 = TextStyle(
    color: ColorsApp().grayColor,
    fontWeight: FontWeight.bold,
    fontSize: 14.sp,
  );


}