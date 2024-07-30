import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:tasky/utils/colors.dart';

class CalendarWidget  extends StatelessWidget{
  final DateTime currentMonth;
  const CalendarWidget({super.key, required this.currentMonth});
  @override
  Widget build(BuildContext context) {
      // Calculating various details for the month's display
  int daysInMonth = DateTime(currentMonth.year, currentMonth.month + 1, 0).day;
  DateTime firstDayOfMonth = DateTime(currentMonth.year, currentMonth.month, 1);
  int weekdayOfFirstDay = firstDayOfMonth.weekday;

  DateTime lastDayOfPreviousMonth =
      firstDayOfMonth.subtract(const Duration(days: 1));
  int daysInPreviousMonth = lastDayOfPreviousMonth.day;

  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children:[
  
        _buildWeeks(),
        10.verticalSpace,
        _buildCalenderHeader(context),
  
      Expanded(
        child: GridView.builder(

        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 7,
          childAspectRatio: 0.98,
        ),
        // Calculating the total number of cells required in the grid
        itemCount: daysInMonth + weekdayOfFirstDay - 1,
        itemBuilder: (context, index) {
          if (index < weekdayOfFirstDay - 1) {
            // Displaying dates from the previous month in grey
            int previousMonthDay =
                daysInPreviousMonth - (weekdayOfFirstDay - index) + 2;
            return Container(
             
              alignment: Alignment.center,
              child: Text(
                previousMonthDay.toString(),
                style: const TextStyle(color: Colors.grey),
              ),
            );
          } else {
            // Displaying the current month's days
            DateTime date = DateTime(currentMonth.year, currentMonth.month, index - weekdayOfFirstDay + 2);
            String text = date.day.toString();
              
            return InkWell(
              onTap: () {
                // Handle tap on a date cell
                // This is where you can add functionality when a date is tapped
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: DateTime.now().day == date.day? const BoxDecoration(
                        color: AppColors.neutralWeight900Color,
                        shape: BoxShape.circle,
                      ):null,
                      child: Text(
                        text,
                        style:  TextStyle(
                          fontWeight: FontWeight.bold,
                          color: DateTime.now().day == date.day?AppColors.whiteBgColor:AppColors.neutralWeight900Color
                        ),
                      ),
                    ),
                  ),
               
                ],
              ),
            );
          }
        },
              ),
      ),
    ] 
  );
  }

   Widget _buildCalenderHeader(context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios_new,size: 16,)),
      Center(child: Text(DateFormat('MMM y').format(currentMonth),style: TextStyle(
        fontWeight: FontWeight.w600,
        color: AppColors.neutralWeight900Color,
        fontSize: 16.sp,
      ),),),
            IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios,size: 16,)),
  
    ],
  );
  }

   Widget _buildWeeks() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildWeekDay('M'),
        _buildWeekDay('T'),
        _buildWeekDay('W'),
        _buildWeekDay('T'),
        _buildWeekDay('F'),
        _buildWeekDay('S'),
        _buildWeekDay('S'),
       
      ],
    );
  }

   Widget _buildWeekDay(String day) {
    return Text(
      day,
      style: const TextStyle(fontWeight: FontWeight.bold),
    );
  }
}




 


 