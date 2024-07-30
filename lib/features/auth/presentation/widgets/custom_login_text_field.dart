import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/utils/colors.dart';

class CustomLoginTextFieldWidget extends StatelessWidget {
  final String hintText;
  final String labelText;
  final Widget? suffix;
  final bool obscureText;
  final void Function(String)? onChanged;
  const CustomLoginTextFieldWidget(
      {super.key,
      this.obscureText = false,
      this.suffix,
      required this.labelText,
      required this.hintText,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      obscureText: obscureText,
  
      decoration: InputDecoration(
        labelText: labelText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        
        hintText: hintText,
        hintStyle: TextStyle(color: AppColors.neutralWeight500Color,fontSize: 16.sp,fontWeight: FontWeight.w400),
        labelStyle:  TextStyle(color: AppColors.neutralWeight900Color,fontSize: 14.sp
        ,fontWeight: FontWeight.w600),
        border: InputBorder.none,
        focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.neutralWeight200Color,width: 1.5, )),
        
        disabledBorder:const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.neutralWeight900Color,width: 1.5, )) ,
       enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.neutralWeight200Color,width: 1.5, )),
        suffix: suffix,
      ),
    );
  }
}
