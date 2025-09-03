import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
        "assets/images/backgroundImage.png",
        width: double.infinity,
        height: 750.h,
        fit: BoxFit.fill
    );
  }
}
