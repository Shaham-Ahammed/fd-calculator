import 'package:flutter/material.dart';

mediaqueryWidth(double val, BuildContext context) {
  return MediaQuery.of(context).size.width * val;
}

mediaqueryHeight(double val, BuildContext context) {
  return MediaQuery.of(context).size.height * val;
}

myText(
  String text,
  double size,
  String fontfamily,
  Color color,
  [FontWeight fontweight=FontWeight.normal]
) {
  return Text(
    text,
    style: TextStyle(fontFamily: fontfamily, fontSize: size, color: color,fontWeight: fontweight),
  );
}

String jotione = "jotiOne";
String koho = "koho";
String kufam = "kufam";

textFields(String heading, context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      myText(heading, mediaqueryHeight(0.018, context), koho, Colors.white,),
      SizedBox(height: mediaqueryHeight(0.01, context)),
      TextFormField(
        cursorColor: Colors.black,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          
          contentPadding: EdgeInsets.symmetric(vertical:10,horizontal: 10),
            filled: true,
            fillColor: const Color.fromRGBO(202, 238, 243, 100),
            border: OutlineInputBorder(
            
                borderSide: const BorderSide(
                    strokeAlign: BorderSide.strokeAlignOutside),
                borderRadius:
                    BorderRadius.circular(mediaqueryWidth(0.03, context))),
            focusedBorder: const OutlineInputBorder(
              
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 24, 216, 139)))),
      )
    ],
  );
}
