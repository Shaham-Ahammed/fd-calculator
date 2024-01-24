// ignore_for_file: must_be_immutable

import 'package:fd_calculator/home_widgets.dart';
import 'package:fd_calculator/resusable_widgets.dart';
import 'package:flutter/material.dart';

ValueNotifier<bool> isCalculatePressed = ValueNotifier<bool>(false);

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(34, 40, 39, 100),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const Appbar(),
            Padding(
              padding: EdgeInsets.all(mediaqueryWidth(0.06, context)),
              child: Column(
                children: [
                  SizedBox(
                    height: mediaqueryHeight(0.02, context),
                  ),
                  textFields("AMOUNT", context),
                  SizedBox(
                    height: mediaqueryHeight(0.025, context),
                  ),
                  textFields("ANNUAL INTEREST RATE", context),
                  SizedBox(
                    height: mediaqueryHeight(0.025, context),
                  ),
                  textFields("MONTHS", context),
                  SizedBox(
                    height: mediaqueryHeight(0.04, context),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CalculateButton(),
                      ClearButton(),
                    ],
                  ),
                  SizedBox(
                    height: mediaqueryHeight(0.05, context),
                  ),
                  ValueListenableBuilder(
                    valueListenable: isCalculatePressed,
                    builder: (context, value, child) {
                      if (value) {
                        return Container(
                          width: double.infinity,
                          decoration: finalBoxDecoration(),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                myText(
                                    "TOTAL INTEREST",
                                    mediaqueryHeight(0.018, context),
                                    koho,
                                    Colors.white),
                                const FinalBoxSizedBox(),
                                myText(
                                    "₹434.00",
                                    mediaqueryHeight(0.028, context),
                                    koho,
                                    Colors.white,
                                    FontWeight.bold),
                                const FinalBoxSizedBox(),
                                const Divider(),
                                const FinalBoxSizedBox(),
                                myText(
                                    "TOTAL AMOUNT",
                                    mediaqueryHeight(0.018, context),
                                    koho,
                                    Colors.white),
                                const FinalBoxSizedBox(),
                                myText(
                                    "₹4343.00",
                                    mediaqueryHeight(0.028, context),
                                    koho,
                                    Colors.white,
                                    FontWeight.bold)
                              ],
                            ),
                          ),
                        );
                      } else {
                        return Container();
                      }
                    },
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
