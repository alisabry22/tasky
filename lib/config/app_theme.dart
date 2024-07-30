import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/utils/colors.dart';

class AppTheme{


  static ThemeData get lightTheme =>ThemeData(
    fontFamily: 'urbanist',
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.whiteBgColor,
    appBarTheme:   AppBarTheme(
      titleTextStyle: TextStyle(color: AppColors.neutralWeight900Color,fontWeight: FontWeight.w700,fontSize: 16.sp),
      elevation: 0,
    
      backgroundColor: AppColors.whiteBgColor,
      surfaceTintColor: AppColors.whiteBgColor,
      iconTheme: const IconThemeData(
        color: Colors.black
      )
    ),

  );
}