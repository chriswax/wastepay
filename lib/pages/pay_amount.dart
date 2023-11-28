import 'package:flutter/material.dart';
import 'package:mobile_bank_ui/pages/mode_of_payment.dart';
import 'package:mobile_bank_ui/pages/signup_screen.dart';
import '../widgets/color.dart';
import '../widgets/custom_button.dart';
import '../widgets/text_fields.dart';
import 'verify_screen.dart';

class PayAmount extends StatefulWidget {
  const PayAmount({super.key});

  @override
  State<PayAmount> createState() => _PayAmountState();
}

class _PayAmountState extends State<PayAmount> {
  //create controllers
  final TextEditingController amountController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    amountController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Ink(
                    decoration: const ShapeDecoration(
                      shape: CircleBorder(),
                      color: AppColor
                          .primaryBackground, // Background color of the rounded icon
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new,
                          color: Colors.white), // Icon color
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SignupScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Enter Amount",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: "You owe ",
                      ),
                      TextSpan(
                        text: "N69,000.00",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: " for the month at ",
                      ),
                      TextSpan(
                        text: "December 23",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text:
                            ", how much will you like to pay for this service?",
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              TextFieldInput(
                  textEditingController: amountController,
                  hintText: '00,0000.00',
                  textInputType: TextInputType.number),
              const SizedBox(
                height: 30,
              ),
              CustomizedButton(
                buttonText: 'Continue',
                buttonColor: AppColor.primaryBackground,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ModePayment(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
