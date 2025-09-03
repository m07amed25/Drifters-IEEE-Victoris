import 'package:anomatrix/features/onboarding/widgets/smooth_page_indicator.dart';
import 'package:flutter/material.dart';

import '../../../config/navigation/navigation.dart';
import '../../../core/utils/color/color_manager.dart';
import '../../../core/utils/strings/app_strings.dart';
import '../../../core/utils/widgets/custom_text_button.dart';
import '../../auth/sing_up/presentation/screen/sing_up.dart';

class NextAndBackButtons extends StatelessWidget {
  const NextAndBackButtons({super.key,required this.pageController,required this.isLast,required this.screensLength});

  final PageController pageController;
  final bool isLast ;
  final int  screensLength;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextButton(textColor: ColorManager.greyColor, text:AppStrings.back, onTap:(){
          pageController.previousPage(duration:const Duration(milliseconds: 750), curve:Curves.fastOutSlowIn);
        }),
        const Spacer(),
        customSmoothPageIndicator(controller: pageController, length: screensLength),
        const Spacer(),
        CustomTextButton(textColor: ColorManager.textColor, text:AppStrings.next, onTap:(){
          if(isLast){
            PushNavigation().navigation(context: context, screen:SingUp());
          }else{
            pageController.nextPage(duration:const Duration(milliseconds: 750), curve:Curves.fastOutSlowIn);
          }
        }),
      ],
    );
  }
}
