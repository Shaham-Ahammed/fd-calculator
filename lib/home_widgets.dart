import 'package:fd_calculator/fd_operations.dart';
import 'package:fd_calculator/home.dart';
import 'package:fd_calculator/resusable_widgets.dart';
import 'package:flutter/material.dart';

TextEditingController amountController = TextEditingController();
TextEditingController irContrller = TextEditingController();
TextEditingController monthsController = TextEditingController();
GlobalKey<FormState> formKey = GlobalKey<FormState>();

BoxDecoration finalBoxDecoration() {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: const Color.fromRGBO(54, 163, 110, 100));
}

class FinalBoxSizedBox extends StatelessWidget {
  const FinalBoxSizedBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mediaqueryHeight(0.01, context),
    );
  }
}

class ClearButton extends StatelessWidget {
  const ClearButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(90),
      onTap: () {
        isCalculatePressed.value = false;
        irContrller.text = "";
        amountController.text = "";
        monthsController.text = "";
      },
      child: Ink(
        width: mediaqueryWidth(0.35, context),
        height: mediaqueryHeight(0.05, context),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(41, 163, 197, 0.612),
            borderRadius: BorderRadius.circular(90)),
        child: Center(
          child: myText(
              "CLEAR", mediaqueryHeight(0.02, context), kufam, Colors.white),
        ),
      ),
    );
  }
}

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(90),
      onTap: () {
        isCalculatePressed.value = false;
        if (formKey.currentState!.validate()) {
          amount = double.parse(amountController.text);
          interestRate = double.parse(irContrller.text);
          months = int.parse(monthsController.text);
          calculateInterest(amount!, interestRate!, months!);
          isCalculatePressed.value = true;
        } else {
          return;
        }
      },
      child: Ink(
        width: mediaqueryWidth(0.45, context),
        height: mediaqueryHeight(0.05, context),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(54, 163, 110, 100),
            borderRadius: BorderRadius.circular(90)),
        child: Center(
          child: myText("CALCULATE", mediaqueryHeight(0.02, context), kufam,
              Colors.white),
        ),
      ),
    );
  }
}

class Appbar extends StatelessWidget {
  const Appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromRGBO(54, 163, 110, 100),
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(90))),
      width: mediaqueryWidth(1, context),
      height: mediaqueryHeight(0.1, context),
      child: Center(
        child: myText("FD CALCULATOR", mediaqueryHeight(0.03, context), jotione,
            Colors.white),
      ),
    );
  }
}

textFields(
    String heading, context, int maxLength, TextEditingController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      myText(
        heading,
        mediaqueryHeight(0.018, context),
        koho,
        Colors.white,
      ),
      SizedBox(height: mediaqueryHeight(0.01, context)),
      TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value == null || value.isEmpty || value == "") {
            return "please enter a value";
          }
          if (heading == "MONTHS") {
            try {
              int.parse(value);
              return null;
            } catch (e) {
              return "enter a valid integer";
            }
          }
          return null;
        },
        controller: controller,
        maxLength: maxLength,
        cursorColor: Colors.black,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            counterText: '',
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
