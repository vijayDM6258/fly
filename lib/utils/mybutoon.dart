import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({super.key, required this.OnTap, required this.Txt});

  final void Function()? OnTap;
  final String Txt;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        var onTap = OnTap;
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width / 1.030,
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            Txt,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
