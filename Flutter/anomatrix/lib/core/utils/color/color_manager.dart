import 'package:flutter/material.dart';
class ColorManager {
  static const Color primaryColor = Color.fromRGBO(3, 10, 39, 1.0);
  
  static const Color greyColor = Colors.grey;

  static const Color styleTextColor =Color(0xFF11DDF0);

  static const Color secondaryColor = Color.fromRGBO(58, 103, 139, 1);

  static const Color textColor = Colors.white;

  static const Color errorColor = Color.fromRGBO(255, 112, 67, 1);

  static const LinearGradient buttonGradient = LinearGradient(
    colors: [
      Color(0xFF11DDF0),
      Color(0xFF275DB3),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient containerGradient = LinearGradient(
    colors: [
  Color.fromRGBO(58, 103, 139, 1),
  Color.fromRGBO(15, 27, 37, 1),
  ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const Color textFormFillColor =Color.fromRGBO(47, 66, 90, 1);

  static const Color textFormStrokeColor =Color.fromRGBO(51, 87, 145, 1);

}