import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../color/color_manager.dart';

class AppTextSpan extends StatelessWidget {
  const AppTextSpan({super.key,required this.text,required this.boldText,required this.onTap});
  final String boldText;
  final String text;
  final void Function()?onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(top: 10.h,bottom: 20.h),
      child: Text.rich(
          TextSpan(
              text: text,
              style: TextStyle(
                fontSize: 16.sp,
                color: ColorManager.textColor, //cyan
              ),
              children: [
                TextSpan(
                  text: "  ${boldText}",
                  recognizer: TapGestureRecognizer()..onTap=onTap,
                  style: TextStyle(
                    color: ColorManager.styleTextColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ]
          )
      ),
    );
  }
}
