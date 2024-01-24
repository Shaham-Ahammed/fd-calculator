import 'package:fd_calculator/resusable_widgets.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(34, 40, 39, 100),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                    children: [
            Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(54, 163, 110, 100),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(90))),
              width: mediaqueryWidth(1, context),
              height: mediaqueryHeight(0.1, context),
              child: Center(
                child: myText("FD CALCULATOR", mediaqueryHeight(0.03, context),
                    jotione, Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(mediaqueryWidth(0.06, context)),
              child: Column(
                children: [
                  SizedBox(
                    height: mediaqueryHeight(0.02, context),
                  ),
                  textFields("AMOUNT", context),
                  SizedBox(height: mediaqueryHeight(0.025, context),),
                  textFields("ANNUAL INTEREST RATE", context),
                   SizedBox(height: mediaqueryHeight(0.025, context),),
                  textFields("MONTHS", context),
                ],
              ),
            )
                    ],
                  ),
          )),
    );
  }
}
