import 'package:flutter/material.dart';
import 'package:mobile_bank_ui/pages/card_payment.dart';
import 'package:mobile_bank_ui/pages/signup_screen.dart';
import 'package:mobile_bank_ui/widgets/color.dart';

import '../widgets/custom_button.dart';
import '../widgets/text_fields.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //create controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height / 6,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center horizontally
                  children: [
                    Image.asset(
                      'assets/images/wastepay.jpg',
                      height: 60,
                      width: 60,
                      fit: BoxFit.fill,
                    ),
                    const Text(
                      "Wastepay",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFieldInput(
                textEditingController: emailController,
                hintText: 'Username/Phone',
                textInputType: TextInputType.text,
              ),
              const SizedBox(
                height: 24,
              ),
              TextFieldInput(
                textEditingController: passwordController,
                hintText: 'Password',
                textInputType: TextInputType.text,
                isPass: true,
                suffixIcon: const Icon(
                  Icons.remove_red_eye,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomizedButton(
                buttonText: 'Login',
                buttonColor: AppColor.primaryBackground,
                textColor: Colors.white,
                onPressed: () {
                  _popupDialog(context);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Dont have an account? ",
                    style: TextStyle(color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => const SignupScreen(),
                      //   ),
                      // );

                      //for testing individual pages
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const CardPayment(),
                        ),
                      );
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

void _popupDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Alert'),
        content: const Text('Are you sure you want to submit?'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text(
              'OK',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text(
              'CANCEL',
              style: TextStyle(
                color: AppColor.danger,
              ),
            ),
          ),
        ],
      );
    },
  );
}
