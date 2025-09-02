import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/color/color_manager.dart';

class OnboardingTittleAndSubTittle extends StatelessWidget {
  const OnboardingTittleAndSubTittle({super.key,required this.subTittle,required this.tittle});
  final String tittle;
  final String subTittle;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15.h,
      children: [
        Text(
          tittle,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xFF11DDF0),
              fontSize: 40.sp,
              fontWeight: FontWeight.bold
          ),
        ),
        Text(
          subTittle,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: ColorManager.maincolor,
            fontSize: 20.sp,
          ),
        ),
      ],
    );
  }
}
