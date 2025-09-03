import 'package:anomatrix/core/utils/strings/app_strings.dart';
import 'package:anomatrix/features/auth/login/presentation/widgets/login_form.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/widgets/background_image.dart';
import '../../../../../core/utils/widgets/screen_tittle.dart';

class Login extends StatelessWidget {
 const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ScreenTittleWithLogo(tittle: AppStrings.login),
              Expanded(
                child: Stack(
                  children: [
                    BackgroundImage(),
                    LoginForm(),
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
