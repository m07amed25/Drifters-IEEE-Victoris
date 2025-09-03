
import 'package:anomatrix/core/utils/color/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomButton extends StatelessWidget {
  final Function()? onTap;
  final String? buttonText;
  final Color? buttonColor;
  final double width ;
  final double height;

  const CustomButton({
    super.key ,
    required this.onTap
    ,required this.buttonText,
    this.buttonColor,
    required this.width,
    this.height=44});
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          height: height.h,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
            color: ColorManager.secondaryColor
          ),
          child: Center(
            child: Text(
              buttonText!,
              style: TextStyle(
                  color: ColorManager.textColor,
                  fontSize: 20.sp,
              ),
            ),
          ),
        )

    );


  }
}
