import 'package:flutter/material.dart';

class InputVerify extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;

  const InputVerify({
    super.key,
    required this.textEditingController,
    this.isPass = false,
    required this.hintText,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide:
          const BorderSide(color: Colors.black), // Change border color to black
      borderRadius: BorderRadius.circular(
          8.0), // You can adjust the border radius as needed
    );

    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: TextField(
        textAlign: TextAlign.center,
        maxLength: 1,
        controller: textEditingController,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
          filled: true,
          fillColor: Colors.white, // Set fill color to white
          contentPadding: const EdgeInsets.all(8),

          border: inputBorder,
          focusedBorder: inputBorder,
          enabledBorder: inputBorder,
        ),
        keyboardType: textInputType,
        obscureText: isPass,
      ),
    );
  }
}
