import 'package:flutter/material.dart';
import 'package:mobile_bank_ui/pages/dashboard.dart';
import 'package:mobile_bank_ui/pages/setup_property.dart';
import 'package:mobile_bank_ui/pages/verify_phone_screen.dart';
import '../widgets/color.dart';
import '../widgets/custom_button.dart';

class SignupComplete extends StatefulWidget {
  const SignupComplete({super.key});

  @override
  State<SignupComplete> createState() => _SignupCompleteState();
}

class _SignupCompleteState extends State<SignupComplete> {
  //create controllers

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
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Sign Up Complete!",
                  style: TextStyle(
                    color: AppColor.primaryBackground,
                    fontSize: 34,
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
                      fontSize: 24,
                    ),
                    children: [
                      TextSpan(
                        text:
                            "Congratulations your registration is complete start paying your ",
                      ),
                      TextSpan(
                        text: "Wastepay",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.primaryBackground,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Image.asset(
                  'assets/images/complete.png',
                  height: 200,
                  width: 200,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Seamless Payments, Cleaner Tomorrow",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center, // Align text to the center
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomizedButton(
                buttonText: 'Get started',
                buttonColor: AppColor.primaryBackground,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SetupProperty(),
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
