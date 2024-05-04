import 'package:flutter/material.dart';
import 'package:medi_care/pallete.dart';

class RoundButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onPressed;

  RoundButton({
    required this.buttonName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.031),
      height: size.height * 0.08,
      width: size.width * 0.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45),
        color: Colors.lightBlueAccent,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          buttonName,
          style: kbodyText.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
