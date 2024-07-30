import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/shared/custom_bubble_triangle.dart';
import 'package:tasky/utils/colors.dart';

class CustomChatBubble extends StatelessWidget {
  final String projectPercent;

  const CustomChatBubble({super.key,required this.projectPercent});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
          width: 65.w,
          height: 37.h,
          alignment: Alignment.center,
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(8).r,
            color: AppColors.neutralWeight900Color,
          ),
            
          child: Text(projectPercent,style:  TextStyle(color: AppColors.whiteBgColor,fontWeight: FontWeight.w700,fontSize: 16.sp),),
        ),

        Positioned(
          bottom: 1,
          left: 30.w,
          child: CustomPaint(painter: ChatBubbleTriangle(
          color: AppColors.neutralWeight900Color
        ),)),
      ],
    );
  }
}