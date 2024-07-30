import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/utils/colors.dart';

class TopLoginTextWidget extends StatelessWidget {
  const TopLoginTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
                   Text("Login",style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.bold),),
          10.verticalSpace,
           Text("Sign in to your account",style: TextStyle(fontSize: 14.sp,color:AppColors.neutralWeight500Color ),),
         10.verticalSpace,
      ],
    );
  }
}