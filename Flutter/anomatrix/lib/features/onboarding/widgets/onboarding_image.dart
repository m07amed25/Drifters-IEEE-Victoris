import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({super.key,required this.image});

  final String image ;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: double.infinity,
      height: 368.h,
      fit: BoxFit.cover,
    );
  }
}
