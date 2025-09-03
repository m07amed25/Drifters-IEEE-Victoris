import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/utils/color/color_manager.dart';

class OnboardingDivider extends StatelessWidget {
  const OnboardingDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(top: 10.h),
      child: SizedBox(
        width: 227.w,
        child: Divider(
          color: ColorManager.textColor,
          height: 1.5.h,
          thickness: .5,
        ),
      ),
    );
  }
}
