import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/features/calendar/data/clocks.dart';
import 'package:tasky/features/calendar/presentation/widgets/single_meeting_widget.dart';
import 'package:tasky/utils/colors.dart';

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10).w,

      child: ListView.separated(
        itemCount: Clock.hours.length,
        itemBuilder: (context, index) {
          //check if there is a meeting in between two hours
        Meeting? meeting=Clock.meetings.where((element) => parseTime(element.from)==parseTime(Clock.hours[index]) &&( element.to==Clock.hours[index+1] ||parseTime(element.to).isBefore(parseTime(Clock.hours[index+1])) )).firstOrNull;
       
       
        return  Row(
          children: [
            Text(Clock.hours[index],style: TextStyle(color: AppColors.neutralWeight900Color,fontSize: 12.sp,fontWeight: FontWeight.w500),),
            10.horizontalSpace,
            Stack(
              clipBehavior: Clip.none,
              children: [
                SizedBox(width: 0.7.sw,child:
                  Divider(color:Clock.hours[index].split(".")[1]!="00" ?  AppColors.neutralWeight900Color:AppColors.neutralWeight200Color,)),
         
            meeting!=null?
         
            Positioned(top: 10.h,left: 10.w,
             child:  MeetingCardDetails(
              
               meetingTime: meeting.time,
               meetingTitle: meeting.title,
               cardColor: meeting.cardColor,
               starterCardColor:meeting.starterCardColor
             )):Container(),
        
              ],
            ),
          ],
        );
      },
      separatorBuilder: (context,index){
        final splitClock=Clock.hours[index].split(".");
          if(splitClock[1]!="00"){
            return 10.verticalSpace;
          }
        
        return 65.verticalSpace;
      }
      ),
    );
  }
}

// Helper function to parse time strings
DateTime parseTime(String timeString) {
  var parts = timeString.split('.');
  return DateTime(2000, 1, 1, int.parse(parts[0]), int.parse(parts[1]));
}