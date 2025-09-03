import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key,required this.textColor,required this.text,required this.onTap,this.textSize=20});
  final void Function()? onTap ;
  final String text;
  final Color? textColor ;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onTap,
        child: Text(
          text,
          style: TextStyle(
              color: textColor,
              fontSize: textSize.sp,
              fontWeight: FontWeight.bold
          ),
        )
    );
  }
}
