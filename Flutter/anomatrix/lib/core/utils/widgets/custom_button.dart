
import 'package:anomatrix/core/utils/color/color_manager.dart';
import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  Function()? onTap;
  final String? buttonText;
  final Color? buttonColor;
  CustomButton({super.key , required this.onTap ,required this.buttonText , this.buttonColor});
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          height: 56,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient:  ColorManager.appGradient,
          ),
          child: Center(child: Text(buttonText! , style: TextStyle(color: Colors.white,
              fontSize: 20, fontWeight: FontWeight.bold),)
            ,),
        )

    );


  }
}
