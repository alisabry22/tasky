
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasky/utils/colors.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;
  const CustomIconButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 40.w,
                    height: 40.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
     borderRadius: BorderRadius.circular(8).r,
     border: Border.all(
       color: const Color.fromARGB(255, 232, 234, 238),
       width: 1.5,
     )),
     child:   IconButton(
       alignment: Alignment.center,
       onPressed: onPressed,
       splashRadius: 8,
       style: IconButton.styleFrom(
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(8).r)
       ),
       icon:  Icon(icon,color: AppColors.neutralWeight900Color,size:20.w ,),
     ),
    );
  }
}
