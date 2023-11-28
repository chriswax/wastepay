import 'package:flutter/material.dart';
import 'package:mobile_bank_ui/pages/signup_screen.dart';
import '../widgets/color.dart';
import '../widgets/custom_button.dart';
import '../widgets/text_fields.dart';
import 'verify_screen.dart';

class HelpSupport extends StatefulWidget {
  const HelpSupport({super.key});

  @override
  State<HelpSupport> createState() => _HelpSupportState();
}

class _HelpSupportState extends State<HelpSupport> {
  //create controllers
  final TextEditingController phoneController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
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
                  alignment: Alignment.topRight,
                  child: Ink(
                    decoration: const ShapeDecoration(
                      shape: CircleBorder(),
                      color:
                          Colors.black, // Background color of the rounded icon
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.close,
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
                  "Enter your phone number to receive code34",
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
              TextFieldInput(
                  textEditingController: phoneController,
                  hintText: 'Phone number',
                  textInputType: TextInputType.number),
              const SizedBox(
                height: 30,
              ),
              CustomizedButton(
                buttonText: 'Send code',
                buttonColor: AppColor.primaryBackground,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const VerifyScreen(),
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
