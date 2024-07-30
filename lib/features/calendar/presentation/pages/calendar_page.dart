import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:tasky/features/calendar/presentation/pages/schedule_widget.dart';
import 'package:tasky/features/calendar/presentation/pages/task_widget.dart';
import 'package:tasky/features/calendar/presentation/widgets/custom_date_day_widget.dart';
import 'package:tasky/shared/widgets/custom_app_bar.dart';
import 'package:tasky/shared/widgets/custom_icon_button.dart';
import 'package:tasky/utils/colors.dart';

class CalendarPage extends StatefulWidget  {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
  _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         backgroundColor: AppColors.neutralWeight100Color,
      appBar: customAppBar("Calendar"),
      body: SafeArea(child: 
      SizedBox(
        width: 1.sw,
        height: 1.sh,
        child:  Column(
          children: [
         const Divider(color: AppColors.neutralWeight200Color,thickness: 1.5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24).w,
            child: Column(
              children: [
                20.verticalSpace,
                //custom date day widget
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(DateFormat('MMMM yyyy').format(DateTime.now()),style: TextStyle(color: AppColors.neutralWeight900Color,fontWeight: FontWeight.w700,fontSize: 18.sp),),
                  
                     Row(
                      children: [
                     CustomIconButton(onPressed: (){},icon: Icons.arrow_back_ios_new,),
                    10.horizontalSpace,
                     CustomIconButton(onPressed: (){},icon: Icons.arrow_forward_ios),
                      ],
                    )
            
                  ],
                ),
                  20.verticalSpace,
                
                
                //top date widget
                EasyDateTimeLine(
                  
                  dayProps:  EasyDayProps(
                  width: 50.w,
                  height: 73.h,
                  
               
                ),
                  itemBuilder: (context, date, isSelected, onTap) {
                    return CustomDateDayWidget(date: date,isSelected: isSelected,);
                  },
                  initialDate: DateTime.now(),headerProps: const EasyHeaderProps(
                    showHeader: false,
                    dateFormatter: DateFormatter.custom(" MMM d"),
                    
                ),),
                   
               
                20.verticalSpace,
            
              ],
            ),
          ),
              TabBar(
                  controller: _tabController,
                  dividerColor: Colors.transparent,
                  labelStyle: TextStyle(color: AppColors.neutralWeight900Color,fontWeight: FontWeight.w700,fontSize: 18.sp),
                  unselectedLabelColor:  AppColors.neutralWeight500Color,
                  indicatorSize: TabBarIndicatorSize.tab, 
                  labelPadding: const EdgeInsets.symmetric(vertical: 10),
                  indicator: const UnderlineTabIndicator(
                  
                    borderSide: BorderSide(color: AppColors.neutralWeight900Color,width: 1.5)
                  ),
                  tabs: const [
                  Text("Schedule",),
                  Text("Task",),
                ],
                ),

                Expanded(child: TabBarView(
                  controller: _tabController,
                  children: const [
                    ScheduleWidget(),
                    TaskWidget(),
                ],),)
          ],
        ),
      )),
    );
  }
}
