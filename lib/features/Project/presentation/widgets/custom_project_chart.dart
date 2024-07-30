
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/features/Project/presentation/widgets/custom_bar.dart';
import 'package:tasky/features/Project/presentation/widgets/custom_chat_bubble.dart';
import 'package:tasky/utils/colors.dart';

class CustomProjectChart extends StatelessWidget {
  const CustomProjectChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     crossAxisAlignment: CrossAxisAlignment.end,
     children: [
       CustomBar(
         barHeight: 107.h,
         month: "Jan",
       ),
         CustomBar(
           barHeight: 138.h,
           month: "Feb",
         ),
           CustomBar(
             barHeight: 79.h,
             month: "Mar",
           ),
             Stack(
              clipBehavior: Clip.none,
               children: [
                 CustomBar(
                   barColor: AppColors.neutralWeight900Color,
                   barHeight: 102.h,
                   month: "Apr",
                 ),
                   Positioned(top: -63.h,right: -5.w,child:const CustomChatBubble(projectPercent: "56 %",),)
               ],
             ),
               CustomBar(
                 barHeight: 127.h,
                 month: "May",
               ),
                CustomBar(
                 barHeight: 133.h,
                 month: "Jun",
               ),
     ],
                  );
  }
}