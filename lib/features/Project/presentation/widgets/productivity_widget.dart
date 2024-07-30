
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/features/Project/presentation/widgets/custom_project_chart.dart';
import 'package:tasky/utils/colors.dart';

class ProductivityWidget extends StatelessWidget {
  const ProductivityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
         child: Container(
           width: 1.sw,
         decoration: const BoxDecoration(
           color: AppColors.whiteBgColor,
           
         ),
         child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 15).r,

           child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Productivity Text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Productivity",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w700,color: AppColors.neutralWeight900Color),),
                  IconButton(onPressed: (){},iconSize: 24.w, icon: const Icon(Icons.more_horiz,color: AppColors.neutralWeight900Color,))
                ],
              ),
              40.verticalSpace,
               const CustomProjectChart(),
          
            ],

            //bars
       

           ),
         ),
       ));
  }
}



