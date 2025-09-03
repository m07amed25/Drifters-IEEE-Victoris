import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../color/color_manager.dart';

class ScreenTittleWithLogo extends StatelessWidget {
  const ScreenTittleWithLogo({super.key,required this.tittle});
  final String tittle ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(top: 18.h,left: 16.w),
      child: Row(
        children: [
          Image.asset(
            "assets/images/logo.png",
            fit: BoxFit.cover,
          ),
          Text(
            tittle,
            style: TextStyle(
              color: ColorManager.styleTextColor,
              fontSize: 32.sp,
            ),
          ),
        ],
      ),
    );
  }
}
