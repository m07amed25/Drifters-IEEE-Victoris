import 'package:anomatrix/core/utils/color/color_manager.dart';
import 'package:anomatrix/core/utils/strings/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialLoginDivider extends StatelessWidget {
  final VoidCallback onGoogleTap;
  final VoidCallback onFacebookTap;
  final VoidCallback onTwitterTap;

  const SocialLoginDivider({
    super.key,
    required this.onGoogleTap,
    required this.onFacebookTap,
    required this.onTwitterTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15.h,
      children: [
        buildDividerRow(),
        buildSocialIconsRow(),
      ],
    );
  }

  Widget buildDividerRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        children: [
          Expanded(child: Divider(color: ColorManager.textColor,height: 1.5.h,)),
          Padding(
            padding:EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(
              AppStrings.orLoginWith,
              style: TextStyle(
                color: ColorManager.textColor,
                fontSize: 13.sp,
              ),
            ),
          ),
          Expanded(child: Divider(color: ColorManager.textColor,height: 1.5.h,)),
        ],
      ),
    );
  }

  Widget buildSocialIconsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 25.w,
      children: [
        buildSocialIcon('assets/images/google-logo.png', onTap: onGoogleTap),
        buildSocialIcon('assets/images/Faebook-logo.png', onTap: onFacebookTap),
        buildSocialIcon(
          'assets/images/twitter-logo (1).png',
          onTap: onTwitterTap,
        ),
      ],
    );
  }

  Widget buildSocialIcon(String imagePath, {required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: 71.w,
          height: 44.h,
          decoration: BoxDecoration(
            color: ColorManager.textFormFillColor,
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(color: ColorManager.textFormStrokeColor,width: 1.5.w)
          ),
          child: Padding(
            padding:EdgeInsets.all(6.h),
            child: Image.asset(
              imagePath,
              width:18.w,
              height:18.h ,
            ),
          )),
    );
  }
}
