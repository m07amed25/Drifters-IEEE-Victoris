import 'package:flutter/material.dart';
class ColorManager {
  static const Color primaryColor = Color(0xFF111D48);
  static const Color greyColor=Colors.grey;
  static const Color textcolor=Colors.cyan;


  static const Color secondaryColor = Color.fromRGBO(58, 103, 139, 1);


  static const Color maincolor = Colors.white;
  static const LinearGradient appGradient = LinearGradient(
    colors: [
      Color(0xFF11DDF0),
      Color(0xFF275DB3),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}