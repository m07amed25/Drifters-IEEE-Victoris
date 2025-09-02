import 'dart:developer';

import 'package:anomatrix/core/utils/strings/app_strings.dart';
import 'package:anomatrix/features/auth/login/presentation/screen/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/color/color_manager.dart';
import '../../../../../core/utils/validator/app_validator.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../layout/presentation/widgets/custom_text_field.dart';
import '../../../../layout/presentation/widgets/social_login_divider.dart';

class SingUp extends StatelessWidget {
  SingUp({super.key});

  final _nameController = TextEditingController();
  final _confirmpasswordController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 100, horizontal: 45),
            child: Text(
              AppStrings.signUp,
              style: TextStyle(
                color: Colors.cyan,
                fontSize: 55,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 110,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/Rectangle-6.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Form(
                        key: _formKey,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(height: 250),
                                CustomTextField(
                                  controller: _nameController,
                                  hintText: AppStrings.userName,
                                  icon: Icons.person,
                                  validator: (input) {
                                    return AppValidator.validate(
                                      input: input!,
                                      type: ValidationType.username,
                                    );
                                  },
                                ), //username
                                SizedBox(height: 10),
                                CustomTextField(
                                  controller: _emailController,
                                  hintText: AppStrings.email,
                                  icon: Icons.email,
                                  validator: (input) {
                                    return AppValidator.validate(
                                      input: input!,
                                      type: ValidationType.email,
                                    );
                                  },
                                ), //email
                                SizedBox(height: 10),
                                CustomTextField(
                                  isPassword: true,
                                  controller: _passwordController,
                                  hintText: AppStrings.password,
                                  icon: Icons.lock_open,
                                  validator: (input) {
                                    return AppValidator.validate(
                                      input: input!,
                                      type: ValidationType.password,
                                    );
                                  },
                                ), //password
                                SizedBox(height: 10),
                                CustomTextField(
                                  isPassword: true,
                                  controller: _confirmpasswordController,
                                  hintText: AppStrings.password,
                                  icon: Icons.lock_open,
                                  validator: (input) {
                                    return AppValidator.validate(
                                      input: _passwordController.text,
                                      type: ValidationType.password,
                                    );
                                  },
                                ), //confirm
                                SizedBox(height: 10),
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

                                SizedBox(height: 10),
                                CustomButton(
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
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      AppStrings.alreadyHaveAccount,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: ColorManager.textcolor, //cyan
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        log(AppStrings.login);
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Login(),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        AppStrings.login,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
