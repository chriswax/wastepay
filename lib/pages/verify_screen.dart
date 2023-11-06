import 'package:flutter/material.dart';
import 'package:mobile_bank_ui/pages/signup_complete.dart';
import 'package:mobile_bank_ui/pages/verify_phone_screen.dart';
import '../widgets/color.dart';
import '../widgets/custom_button.dart';
import '../widgets/input_verify.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  //create controllers
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  final TextEditingController num3Controller = TextEditingController();
  final TextEditingController num4Controller = TextEditingController();
  bool isChecked = false; // Initialize the checkbox state

  @override
  void dispose() {
    super.dispose();
    num1Controller.dispose();
    num2Controller.dispose();
    num3Controller.dispose();
    num4Controller.dispose();
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
                child: Ink(
                  decoration: const ShapeDecoration(
                    shape: CircleBorder(),
                    color: Colors.black, // Background color of the rounded icon
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new,
                        color: Colors.white), // Icon color
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VerifyPhoneScreen(),
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
                  "Create Account",
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
                  "Enter 4 digit code sent to you",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Expanded(
                    child: InputVerify(
                      textEditingController: num1Controller,
                      hintText: '',
                      textInputType: TextInputType.number,
                      isPass: true,
                    ),
                  ),
                  Expanded(
                    child: InputVerify(
                      textEditingController: num2Controller,
                      hintText: '',
                      textInputType: TextInputType.number,
                      isPass: true,
                    ),
                  ),
                  Expanded(
                    child: InputVerify(
                      textEditingController: num3Controller,
                      hintText: '',
                      textInputType: TextInputType.number,
                      isPass: true,
                    ),
                  ),
                  Expanded(
                    child: InputVerify(
                      textEditingController: num4Controller,
                      hintText: '',
                      textInputType: TextInputType.number,
                      isPass: true,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                    children: [
                      TextSpan(
                        text: "Didn't receive code? ",
                      ),
                      TextSpan(
                        text: "Resend Code",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomizedButton(
                buttonText: 'Verify Code',
                buttonColor: AppColor.primaryBackground,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SignupComplete(),
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
