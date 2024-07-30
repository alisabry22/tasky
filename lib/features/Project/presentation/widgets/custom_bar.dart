
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/utils/colors.dart';

class CustomBar extends StatelessWidget {
  final Gradient gradient;
  final Color? barColor;
  final double barHeight;
  final String month;
  const CustomBar({
    super.key,
    this.gradient=const LinearGradient(colors: [
      AppColors.neutralWeight200Color,
    AppColors.neutralWeight200Color,
    ]),
    this.barHeight= 107.0,
    this.barColor,
    required this.month,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     
     
    child: Column(
      children: [
      Container(
           width: 48.w,
      height: barHeight,
      decoration:  BoxDecoration(
        color: barColor,
        gradient:barColor==null? gradient:null,
        borderRadius:const BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8))
      ),
      ),
      5.verticalSpace,
       Text(month,style: TextStyle(color: AppColors.neutralWeight500Color,fontWeight: FontWeight.w500,fontSize: 14.sp),),
      ],
    ),
    
    );
  }
}