import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../color/color_manager.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool hideInput;
  final String? Function(String?)? validator;
  final String? Function(String?)? onChanged;
  final TextInputType keyBoardType ;
  final IconData prefixIcon;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.hideInput = false,
    required this.keyBoardType,
    required this.prefixIcon,
    this.validator,
    this.onChanged
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 295.w,
      child: TextFormField(
        style: TextStyle(
          color: ColorManager.textColor,
          fontSize: 10.sp
        ),
        controller: controller,
        obscureText:hideInput,
        validator: validator,
        onChanged: onChanged,
        keyboardType:keyBoardType,
        decoration:InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: ColorManager.greyColor,
            fontSize: 14.sp
          ),
          errorStyle: TextStyle(
            fontSize: 16.sp,
            color: ColorManager.errorColor
          ),
          prefixIcon: Icon(
            prefixIcon,
            size: 16.sp,
            color: ColorManager.greyColor,
          ),
          filled: true,
          fillColor: ColorManager.textFormFillColor,
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: ColorManager.errorColor)
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: ColorManager.errorColor)
          ) ,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color:ColorManager.textFormStrokeColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color:ColorManager.textFormStrokeColor)
          ),
        ),
      ),
    );
  }
}
