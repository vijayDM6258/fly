import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {super.key,
      required this.Controller,
      required this.hintText,
      required this.securetxt});

  final TextEditingController Controller;
  final String hintText;
  final bool securetxt;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: Controller,
      obscureText: securetxt,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade200,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade200),
        ),
        fillColor: Colors.white,
        filled: true,
        hintStyle: TextStyle(color: Colors.grey),
        hintText: hintText,
      ),
    );
  }
}
