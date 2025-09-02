import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../color/color_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,required this.height,required this.width,required this.text,required this.onTap});

  final double width ;
  final double height ;
  final String text ;
  final void Function()? onTap ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 82.w,
        height: 31.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          gradient: LinearGradient(
            colors: [
              Color(0xFF11DDF0),
              Color(0xFF275DB3),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: ColorManager.textColor,
              fontSize:20.sp,
            ),
          ),
        ),
      ),
    );
  }
}
