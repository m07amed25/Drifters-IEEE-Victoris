import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/utils/color/color_manager.dart';

SmoothPageIndicator customSmoothPageIndicator ({required PageController controller,required int length}){
  return SmoothPageIndicator(
    controller: controller,
    count: length,
    axisDirection: Axis.horizontal,
    effect:WormEffect(
        spacing:8.0.w,
        radius:20.0.r,
        dotWidth:10.w,
        dotHeight:8.h,
        paintStyle:PaintingStyle.fill,
        strokeWidth:  1,
        dotColor:  Colors.white,
        activeDotColor:  ColorManager.primaryColor
    ),
  );
}