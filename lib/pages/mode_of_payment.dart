import 'package:flutter/material.dart';
import 'package:mobile_bank_ui/pages/card_payment.dart';
import 'package:mobile_bank_ui/pages/pay_amount.dart';
import '../widgets/color.dart';
import '../widgets/custom_button.dart';
import '../widgets/text_fields.dart';

class ModePayment extends StatefulWidget {
  const ModePayment({super.key});

  @override
  State<ModePayment> createState() => _ModePaymentState();
}

class _ModePaymentState extends State<ModePayment> {
  //create controllers
  final TextEditingController cardController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    cardController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String selectedPaymentMode = 'Card';
    double height = MediaQuery.of(context).size.height;
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
                          builder: (context) => const PayAmount(),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Mode Of Payment",
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
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "How will you like to pay for this service",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Card(
                color: AppColor.cardBackground,
                elevation: 4.0,
                margin: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Radio(
                        value: 'Card',
                        activeColor: AppColor.darkText,
                        groupValue: selectedPaymentMode,
                        onChanged: (value) {
                          setState(() {
                            selectedPaymentMode = value.toString();
                          });
                        },
                      ),
                      const Text(
                        'Card Payment',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: AppColor.darkText,
                        ),
                      ),
                      const Icon(
                        Icons.credit_card,
                        size: 32.0,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: AppColor.cardBackground,
                elevation: 4.0,
                margin: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Radio(
                        value: 'Bank',
                        activeColor: Colors.black,
                        groupValue: selectedPaymentMode,
                        onChanged: (value) {
                          setState(() {
                            selectedPaymentMode = value.toString();
                          });
                        },
                      ),
                      const Text(
                        'Bank Transfer',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: AppColor.darkText,
                        ),
                      ),
                      const Icon(
                        Icons.account_balance,
                        size: 32.0,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 4,
              ),
              CustomizedButton(
                buttonText: 'Proceed to Pay',
                buttonColor: AppColor.primaryBackground,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const CardPayment(),
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
