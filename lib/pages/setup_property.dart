import 'package:flutter/material.dart';
import 'package:mobile_bank_ui/pages/setup_property_confirm.dart';
import 'package:mobile_bank_ui/pages/signup_screen.dart';
import '../widgets/color.dart';
import '../widgets/custom_button.dart';
import '../widgets/text_fields.dart';
import 'verify_screen.dart';

class SetupProperty extends StatefulWidget {
  const SetupProperty({super.key});

  @override
  State<SetupProperty> createState() => _SetupPropertyState();
}

class _SetupPropertyState extends State<SetupProperty> {
  //create controllers
  final TextEditingController phoneController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

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
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ), // Icon color
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
                  "Set Up Your Property Account",
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
                  "Enter your property address to set up your account",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              TextFieldInput(
                  textEditingController: phoneController,
                  hintText: 'property address',
                  textInputType: TextInputType.number),
              const SizedBox(
                height: 25,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "what is property address? ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height / 4,
              ),
              CustomizedButton(
                buttonText: 'Create account',
                buttonColor: AppColor.primaryBackground,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SetupPropertyConfirm(),
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
