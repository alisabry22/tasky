
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasky/utils/colors.dart';

class MeetingCardDetails extends StatelessWidget {
  const MeetingCardDetails({super.key,
    required this.meetingTime,
    required this.meetingTitle,
    required this.cardColor,
    required this.starterCardColor
  });
final String meetingTime;
final String meetingTitle;
final Color cardColor;
final Color starterCardColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 272.w,
      height: 64.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(8).r,
      ),
      child: Row(
        children: [
           Container(
           decoration:  BoxDecoration(
             color: starterCardColor,
             borderRadius: const BorderRadius.only(topLeft:Radius.circular(8) ,bottomLeft:Radius.circular(8) )
           ),
        width: 6.w,
        height:64.h ,
      ),
      10.horizontalSpace,
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
Text(meetingTitle,style: TextStyle(color: AppColors.neutralWeight900Color,fontSize: 14.sp,fontWeight: FontWeight.w600),),
       10.verticalSpace,
       Row(
         children: [
          SvgPicture.asset("assets/svg/Time Circle.svg",width: 16.w,height: 16.h,),
           
           10.horizontalSpace,
           Text(meetingTime,style: TextStyle(color: AppColors.neutralWeight500Color,fontSize: 12.sp,fontWeight: FontWeight.w500),),
         ],
       ), 
      
        ],
      )
        ],
      ),
    );
  }
}
