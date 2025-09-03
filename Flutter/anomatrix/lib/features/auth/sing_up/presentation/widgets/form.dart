import 'dart:developer';
import 'package:anomatrix/config/navigation/navigation.dart';
import 'package:anomatrix/core/utils/widgets/app_text_span.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/strings/app_strings.dart';
import '../../../../../core/utils/validator/app_validator.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_text_field.dart';
import 'social_login_divider.dart';
import '../../../login/presentation/screen/login.dart';

class SingUpForm extends StatelessWidget {
  SingUpForm({super.key});

  final _nameController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _emailController = TextEditingController();
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
                spacing: 15.h,
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
                  ), //username
                  CustomTextField(
                    controller: _emailController,
                    hintText: AppStrings.email,
                    prefixIcon: Icons.email_outlined,
                    keyBoardType: TextInputType.emailAddress,
                    validator: (input) {
                      return AppValidator.validate(
                        input: input!,
                        type: ValidationType.email,
                      );
                    },
                  ), //email
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
                  CustomTextField(
                    hideInput: true,
                    prefixIcon: Icons.lock_outline,
                    controller: _confirmPasswordController,
                    hintText: AppStrings.confirmPassword,
                    keyBoardType: TextInputType.visiblePassword,
                    validator: (input) {
                      return AppValidator.validate(
                        input: input!,
                        type: ValidationType.confirmpassword,
                      );
                    },
                  ),
                  CustomButton(
                    width: double.infinity,
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
                    buttonText: AppStrings.signUp,
                  ),//password
                  SocialLoginDivider(
                    onGoogleTap: () {
                      print('Login with Google tapped!');
                    },
                    onFacebookTap: () {
                      print('Login with Facebook tapped!');
                    },
                    onTwitterTap: () {
                      print('Login with Twitter tapped!');
                    },
                  ),
                  AppTextSpan(text:AppStrings.alreadyHaveAccount, boldText:AppStrings.login, onTap:(){
                    PushNavigation().navigation(context: context, screen: Login());
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
