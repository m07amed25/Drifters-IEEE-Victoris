import 'package:anomatrix/config/navigation/navigation.dart';
import 'package:anomatrix/core/utils/color/color_manager.dart';
import 'package:anomatrix/core/utils/strings/app_strings.dart';
import 'package:anomatrix/core/utils/widgets/custom_text_button.dart';
import 'package:anomatrix/features/auth/sing_up/presentation/screen/sing_up.dart';
import 'package:anomatrix/features/onboarding/widgets/next_and_back_buttons.dart';
import 'package:anomatrix/features/onboarding/widgets/onboarding_divider.dart';
import 'package:anomatrix/features/onboarding/widgets/onboarding_image.dart';
import 'package:anomatrix/features/onboarding/widgets/onboarding_tittle_and_subtittle.dart';
import 'package:anomatrix/features/onboarding/widgets/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<String>onboardingImage = [
  "assets/images/onboarding-1.png",
  "assets/images/onboarding-2.png",
  "assets/images/onboarding-3.png"
];

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController pageController = PageController();

  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:PageView.builder(
            onPageChanged: (value){
              if(value == onboardingImage.length-1){
                setState(() {
                  isLast = true;
                });
              }else{
                setState(() {
                  isLast= false;
                });
              }
            },
            controller: pageController,
            itemCount: onboardingImage.length,
              itemBuilder: (context,index){
                return Column(
                  children: [
                    OnboardingImage(image: onboardingImage[index]),
                    OnboardingDivider(),
                    Expanded(
                      child: Padding(
                        padding:EdgeInsets.symmetric(vertical: 12.h,horizontal: 16.w),
                        child: Column(
                          children: [
                            OnboardingTittleAndSubTittle(subTittle: AppStrings.onboardingSubTittles[index], tittle:AppStrings.onboardingTittles[index]),
                            const Spacer(),
                            NextAndBackButtons(pageController: pageController, isLast: isLast, screensLength: onboardingImage.length)
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
          )
      ),
    );
  }
}
