import 'package:anomatrix/config/theme/app_theme.dart';
import 'package:anomatrix/features/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/auth/sing_up/presentation/screen/sing_up.dart';

class Anomatrix extends StatelessWidget {
  const Anomatrix({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child){
        return MaterialApp(
          theme: appTheme,
            debugShowCheckedModeBanner: false,
            home: Onboarding()
        );
        },
    );
  }
}
