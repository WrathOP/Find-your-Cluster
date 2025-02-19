import 'package:flutter/material.dart';



TextStyle headingStyle(
    {double fontSize = 36, Color color = const Color(0xff0d406a)}) {
  var style = TextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: FontWeight.w700,
  );
  return style;
}

TextStyle subHeadingStyle(
    {double fontSize = 18, Color color = const Color(0xff0d406a)}) {
  var style = TextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: FontWeight.w500,
  );
  return style;
}

 TextStyle bodyStyle(
    {double fontSize = 14, Color color = const Color(0xff0d406a)}) {
  var style = TextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: FontWeight.w400,
  );
  return style;
}

TextStyle buttonTextStyle({double fontSize = 14, Color color = Colors.white}) {
  var style = TextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: FontWeight.w500,
  );
  return style;
}


