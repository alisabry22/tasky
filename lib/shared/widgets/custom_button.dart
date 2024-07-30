
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/utils/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String btnText;
  final Function()? onPressed;
  final Color btnColor;
  final Size btnSize ;
  final Color? borderColor;
  final Color textColor;
  const CustomElevatedButton(
      {super.key,
      this.btnColor = AppColors.neutralWeight900Color,
      required this.btnText,
      this.onPressed,
      this.borderColor,
      this.textColor=AppColors.whiteBgColor,
      this.btnSize=const Size(327, 56)});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        
        style: ElevatedButton.styleFrom(
          fixedSize: btnSize,
            overlayColor:AppColors.lightBgWeight300Color,
            backgroundColor: btnColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8).r,
              side:borderColor == null ? BorderSide.none : BorderSide(
                color: borderColor!,
              )
            )),
        child: Text(
          btnText,
          style:  TextStyle(
              color: textColor,fontSize: 14.sp, fontWeight: FontWeight.w700),
        ));
  }
}
