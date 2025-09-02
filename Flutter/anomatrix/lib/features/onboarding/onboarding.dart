import 'package:anomatrix/core/utils/strings/app_strings.dart';
import 'package:anomatrix/core/utils/widgets/custom_button.dart';
import 'package:anomatrix/features/onboarding/widgets/onboarding_image.dart';
import 'package:anomatrix/features/onboarding/widgets/onboarding_tittle_and_subtittle.dart';
import 'package:anomatrix/features/onboarding/widgets/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../auth/login/presentation/screen/login.dart';

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

  String name = "0";

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
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(58, 103, 139, 1),
                                Color.fromRGBO(15, 27, 37, 1),
                              ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.only(topLeft:Radius.circular(25.r),topRight:Radius.circular(25.r))
                        ),
                        child: Padding(
                          padding:EdgeInsets.symmetric(vertical: 12.h,horizontal: 16.w),
                          child: Column(
                            spacing: 10.h,
                            children: [
                              OnboardingTittleAndSubTittle(subTittle: AppStrings.onboardingSubTittles[index], tittle:AppStrings.onboardingTittles[index]),
                              const Spacer(),
                              Row(
                                children: [
                                  customSmoothPageIndicator(controller: pageController, length: onboardingImage.length),
                                  const Spacer(),
                                  CustomButton(
                                    onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Login(),
                                          ),
                                        );

                                    },
                                    buttonText: AppStrings.next,
                                  ),
                                ],
                              )
                            ],
                          ),
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
