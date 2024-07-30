
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/utils/colors.dart';

class DontHaveAccountWidget extends StatelessWidget {
  const DontHaveAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Don't have an account?",style: TextStyle(color: AppColors.neutralWeight500Color,fontWeight: FontWeight.w500,fontSize: 14.sp),),
        TextButton(onPressed: (){}, child:  Text("Register Here",style: TextStyle(color: AppColors.neutralWeight900Color,fontSize: 14.sp,fontWeight: FontWeight.w700),)),
      ],
    
    
    );
  }
}
