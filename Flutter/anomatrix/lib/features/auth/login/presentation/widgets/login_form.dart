import 'dart:developer';

import 'package:anomatrix/core/utils/color/color_manager.dart';
import 'package:anomatrix/core/utils/widgets/custom_text_button.dart';
import 'package:anomatrix/features/auth/sing_up/presentation/screen/sing_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/navigation/navigation.dart';
import '../../../../../core/utils/strings/app_strings.dart';
import '../../../../../core/utils/validator/app_validator.dart';
import '../../../../../core/utils/widgets/app_text_span.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_text_field.dart';
import '../screen/login.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomTextField(
                    controller: _nameController,
                    prefixIcon: Icons.person_2_outlined,
                    hintText: AppStrings.userName,
                    keyBoardType: TextInputType.name,
                    validator: (input) {
                      return AppValidator.validate(
                        input: input!,
                        type: ValidationType.username,
                      );
                    },
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  CustomTextField(
                    hideInput: true,
                    prefixIcon: Icons.lock_outline,
                    controller: _passwordController,
                    hintText: AppStrings.password,
                    keyBoardType: TextInputType.visiblePassword,
                    validator: (input) {
                      return AppValidator.validate(
                        input: input!,
                        type: ValidationType.password,
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomTextButton(textColor: ColorManager.greyColor, text: AppStrings.forgetPassword,textSize: 13.sp ,onTap: (){}),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  CustomButton(
                    width: 133.w,
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        log(AppStrings.orLoginWith);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ),
                        );
                      }
                    },
                    buttonText: AppStrings.login,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  AppTextSpan(text:AppStrings.doesNotHaveAccount, boldText:AppStrings.signUp, onTap:(){
                    PushNavigation().navigation(context: context, screen: SingUp());
                  }),
                  SizedBox(
                    height: 50.h,
                  )
                 ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
