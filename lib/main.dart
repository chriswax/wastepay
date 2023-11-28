import 'package:flutter/material.dart';
import 'package:mobile_bank_ui/pages/login_screen.dart';
import 'package:mobile_bank_ui/widgets/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColor.scaffoldBackground,
      ),
      //home: const LoginScreen(),

      home: const LoginScreen(),
    );
  }
}
