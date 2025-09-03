import 'package:anomatrix/core/utils/strings/app_strings.dart';
import 'package:anomatrix/core/utils/widgets/background_image.dart';
import 'package:anomatrix/core/utils/widgets/screen_tittle.dart';
import 'package:anomatrix/features/auth/sing_up/presentation/widgets/form.dart';
import 'package:flutter/material.dart';

class SingUp extends StatelessWidget {
  SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ScreenTittleWithLogo(tittle: AppStrings.signUp),
              Expanded(
                child: Stack(
                  children: [
                    BackgroundImage(),
                    SingUpForm(),
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
