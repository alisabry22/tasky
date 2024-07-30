import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tasky/utils/colors.dart';

class CustomProjectDashWidget  extends StatelessWidget{
  final Gradient?  gradient;
  final String total;
  final String projectTitle;
  final String iconPath;

  const CustomProjectDashWidget({super.key,required this.total,required this.projectTitle,required this.iconPath,required this.gradient});
  @override
  Widget build(BuildContext context) {
      return Container(
        height: 100.h,
        width: 104.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8).r,
          gradient: gradient,
          boxShadow: const [
            BoxShadow(
              color: AppColors.neutralWeight200Color,
              blurRadius: 0.3,
              spreadRadius: 0.3,
              offset: Offset(0, 3)
            ),
          ]

        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16).w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Text(total,style: TextStyle(color: AppColors.whiteBgColor,fontSize: 24.sp,fontWeight: FontWeight.w700,),),
                    SvgPicture.asset(iconPath),
                 ],
               ),
          
            
              5.verticalSpace,
              Text(projectTitle,textAlign: TextAlign.start,style: TextStyle(color: AppColors.whiteBgColor,fontSize: 12.sp,fontWeight: FontWeight.w500),),
              5.verticalSpace,
            ]
                ),
        )
      );
  }
}