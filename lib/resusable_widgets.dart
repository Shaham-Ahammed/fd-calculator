import 'package:flutter/material.dart';

mediaqueryWidth(double val, BuildContext context) {
  return MediaQuery.of(context).size.width * val;
}

mediaqueryHeight(double val, BuildContext context) {
  return MediaQuery.of(context).size.height * val;
}

myText(String text, double size, String fontfamily, Color color,
    [FontWeight fontweight = FontWeight.normal]) {
  return Text(
    text,
    style: TextStyle(
        fontFamily: fontfamily,
        fontSize: size,
        color: color,
        fontWeight: fontweight),
  );
}

String jotione = "jotiOne";
String koho = "koho";
String kufam = "kufam";
