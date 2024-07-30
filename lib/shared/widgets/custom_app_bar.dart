

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tasky/utils/colors.dart';

PreferredSizeWidget customAppBar(String title) {
  return  AppBar(
        title:  Text(title),
        leading: const Icon(Icons.menu),
        backgroundColor: AppColors.neutralWeight100Color,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8).w,
            child: Container(
                width: 40.w,
                height: 40.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8).r,
                    border: Border.all(
                      color: AppColors.neutralWeight200Color,
                      width: 1.5,
                    )),
                child: Stack(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/svg/notification.svg")),
                    Positioned(
                        top: 2,
                        right: 5,
                        child: SvgPicture.asset("assets/svg/Ellipse 4.svg")),
                  ],
                )),
          )
        ],
      );
 
}
