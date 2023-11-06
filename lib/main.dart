import 'package:flutter/material.dart';
import 'package:mobile_bank_ui/widgets/color.dart';

import 'pages/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColor.scaffoldBackground,
      ),
      home: const LoginScreen(),
    );
  }
}
