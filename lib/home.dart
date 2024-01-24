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
                  SizedBox(height: mediaqueryHeight(0.04, context),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Ink(
                          width: mediaqueryWidth(0.45,context),
                          height: mediaqueryHeight(0.05, context),
                        decoration: BoxDecoration(color: Color.fromRGBO(54, 163, 110, 100),borderRadius: BorderRadius.circular(90)),
                          child: Center(child: myText("CALCULATE", mediaqueryHeight(0.02, context),kufam , Colors.white),),
                        ),
                        
                      ),
                      InkWell(
                        child: Ink(
                          width: mediaqueryWidth(0.35,context),
                          height: mediaqueryHeight(0.05, context),
                        decoration: BoxDecoration(color: Color.fromRGBO(41, 163, 197, 0.612),borderRadius: BorderRadius.circular(90)),
                          child: Center(child: myText("CLEAR", mediaqueryHeight(0.02, context),kufam , Colors.white),),
                        ),),

                    ],
                  ),
                 SizedBox(height: mediaqueryHeight(0.05, context),),
                 Container(
                         width: double.infinity,      
                  height: mediaqueryHeight(0.25,context),

                  decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(54, 163, 110, 100)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        myText("TOTAL INTEREST", mediaqueryHeight(0.018, context), koho, Colors.white),
                        SizedBox(height: mediaqueryHeight(0.01, context),),
                    myText("₹4343.00", mediaqueryHeight(0.028, context), koho, Colors.white,FontWeight.bold)  
                     , SizedBox(height: mediaqueryHeight(0.01, context),),
                     Divider(),
                     SizedBox(height: mediaqueryHeight(0.01, context),),
                      myText("TOTAL AMOUNT", mediaqueryHeight(0.018, context), koho, Colors.white),
                       SizedBox(height: mediaqueryHeight(0.01, context),),
                        myText("₹4343.00", mediaqueryHeight(0.028, context), koho, Colors.white,FontWeight.bold)  

                      ],
                    ),
                  ),
                 )    
                ],
              ),
              
            )
                    ],
                  ),
          )),
    );
  }
}
