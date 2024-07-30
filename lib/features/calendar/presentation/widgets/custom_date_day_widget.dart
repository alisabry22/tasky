
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:tasky/utils/colors.dart';

class CustomDateDayWidget extends StatelessWidget {
  final DateTime date;
  final bool isSelected;
  const CustomDateDayWidget({
    super.key,
    required this.isSelected,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      height: 73.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color:isSelected?AppColors.neutralWeight900Color: AppColors.whiteBgColor,
        borderRadius: BorderRadius.circular(8).r
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8).w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(DateFormat('EEEE').format(date).substring(0,3),textAlign: TextAlign.center,style: TextStyle(color:isSelected?AppColors.whiteBgColor: AppColors.neutralWeight500Color,fontWeight: FontWeight.w700,fontSize: 12.sp),),
            Text(date.day.toString(),style: TextStyle(color:isSelected?AppColors.whiteBgColor: AppColors.neutralWeight900Color,fontWeight: FontWeight.w700,fontSize: 16.sp),),
          ],
        ),
      ),
    );
  }
}