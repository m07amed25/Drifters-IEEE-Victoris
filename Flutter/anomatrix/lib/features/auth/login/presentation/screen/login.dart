import 'dart:developer';

import 'package:anomatrix/core/utils/color/color_manager.dart';
import 'package:anomatrix/core/utils/strings/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/validator/app_validator.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../layout/presentation/widgets/custom_text_field.dart';
import '../../../sing_up/presentation/screen/sing_up.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final GlobalKey<FormState> loginkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    const String backgroundImage = 'assets/images/Rectangle-6.png';
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:EdgeInsets.symmetric(vertical: 40,horizontal:10 ),
                child: Text(
                  AppStrings.login,
                  style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 55,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Expanded(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                        backgroundImage,
                        width: double.infinity,
                        height: 800,
                        fit: BoxFit.fill
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 1),
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
                                      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            SizedBox(height: 120),
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
                                            SizedBox(height: 20),
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
                                            TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                AppStrings.forgetPassword,
                                                style: TextStyle(
                                                  color: ColorManager.maincolor,//white
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14.sp,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 20),
                                            CustomButton(
                                              onTap: () {
                                                if (_formKey.currentState!.validate()) {
                                                  log(AppStrings.orLoginWith);
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) => SingUp(),
                                                    ),
                                                  );
                                                }
                                              },
                                              buttonText: AppStrings.login,
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
                    ),
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
