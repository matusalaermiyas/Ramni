import 'package:flutter/material.dart';
import 'package:ramniui/styles/colors.dart';

class AppInput extends StatelessWidget {
  final String label, hintText;
  final TextEditingController controller;
  final bool obscureText;
  final Widget? suffixIcon;

  const AppInput(
      {required this.label,
      required this.hintText,
      required this.controller,
      this.obscureText = false,
      this.suffixIcon,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 343,
        decoration: BoxDecoration(
            border: Border.all(color: inputBorderColor),
            color: inputBackgroundColor,
            borderRadius: BorderRadius.circular(4)),
        padding: const EdgeInsets.only(top: 26, left: 21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(fontSize: 18),
            ),
            TextField(
              controller: controller,
              obscureText: obscureText,
              decoration: InputDecoration(
                  suffixIcon: suffixIcon,
                  contentPadding: const EdgeInsets.all(0),
                  hintText: hintText,
                  border:
                      const OutlineInputBorder(borderSide: BorderSide.none)),
            )
          ],
        ));
  }
}
