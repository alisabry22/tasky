import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:tasky/features/calendar/data/tasks_data.dart';
import 'package:tasky/utils/colors.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: AppColors.whiteBgColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10).w,
        child: ListView.separated(
            itemCount: TaskData.tasks.length,
            itemBuilder: (context,index){
              return Card(
                elevation: 5,
                shadowColor: AppColors.lightBgWeight300Color,
                surfaceTintColor: AppColors.whiteBgColor,
                color: AppColors.whiteBgColor,
                child: ListTile(
                  title: Text(TaskData.tasks[index].title,style: TextStyle(color: AppColors.neutralWeight900Color,fontSize: 16.sp,fontWeight: FontWeight.w500),),
                  subtitle:Text( "Due Date : ${DateFormat('EEE, dd MMM yyyy').format(DateTime.now())}",style: TextStyle(color: AppColors.neutralWeight500Color,fontSize: 12.sp,fontWeight: FontWeight.w400)) ,
                  trailing: Container(width: 30.w,height: 30.h,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8).r,
                    color: AppColors.greenColor
                  ),child: const Icon(Icons.check,color: AppColors.whiteBgColor,),),
                ),
              );
            
        
            },
              separatorBuilder: (context,index){
                return 10.verticalSpace;
              },
        ),
      ),
    );
  }
}