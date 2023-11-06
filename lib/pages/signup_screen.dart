import 'package:flutter/material.dart';
import 'package:mobile_bank_ui/pages/verify_phone_screen.dart';
import '../widgets/color.dart';
import '../widgets/custom_button.dart';
import '../widgets/text_fields.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  //create controllers
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  bool isChecked = true; // Initialize the checkbox state

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    usernameController.dispose();
    confirmPasswordController.dispose();
  }

  void signupUser() async {
    // //set is loading to true
    // setState(() {
    //   isLoading = true;
    // });
    // //signup user using our authmethod
    // String res = await AuthMethod().signupUser(
    //     email: emailController.text,
    //     password: passwordController.text,
    //     address: addressController.text,
    //     name: nameController.text);
    // //if string retur is success user has been credited and navigate to next screen  otherwise show error .
    // if (res == "success") {
    //   setState(() {
    //     isLoading = false;
    //   });
    //   //navigate to the next screen
    // } else {
    //   setState(() {
    //     isLoading = false;
    //   });
    //   //show error
    //   showSnackBar(context, res);
    // }
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
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
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
                  "Fill in details to create an account",
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
                  textEditingController: emailController,
                  hintText: 'Email',
                  textInputType: TextInputType.text),
              const SizedBox(
                height: 24,
              ),
              TextFieldInput(
                  textEditingController: usernameController,
                  hintText: 'Username',
                  textInputType: TextInputType.text),
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
                height: 24,
              ),
              TextFieldInput(
                textEditingController: passwordController,
                hintText: 'Confirm Password',
                textInputType: TextInputType.text,
                isPass: true,
                suffixIcon: const Icon(
                  Icons.remove_red_eye,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Theme(
                data: ThemeData(
                  unselectedWidgetColor: Colors.black,
                ), // Set unselectedWidgetColor to black
                child: CheckboxListTile(
                  activeColor: Colors.black,
                  title: const Text(
                    "By continuing you agree to our Terms of service and privacy",
                    style: TextStyle(color: Colors.black),
                  ),
                  value: isChecked,
                  onChanged: (bool? newValue) {
                    if (newValue != null) {
                      setState(() {
                        isChecked = newValue == true;
                      });
                    }
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CustomizedButton(
                buttonText: 'Create account',
                buttonColor: AppColor.primaryBackground,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const VerifyPhoneScreen(),
                    ),
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account? ",
                    style: TextStyle(color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "Login",
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
