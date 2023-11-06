import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  final Icon? suffixIcon;

  const TextFieldInput({
    super.key,
    required this.textEditingController,
    this.isPass = false,
    required this.hintText,
    this.suffixIcon,
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
        controller: textEditingController,
        style: const TextStyle(color: Colors.black, fontSize: 16),
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.black,
            fontSize: 16,
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
