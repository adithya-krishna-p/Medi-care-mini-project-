import 'package:flutter/material.dart';
import 'package:medi_care/pallete.dart';

class TextInputButton extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final bool obscureText;

  TextInputButton({
    required this.icon,
    required this.hintText,
    required this.inputType,
    required this.inputAction,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: size.height * 0.08,
        width: size.width * 0.85,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 178, 227, 246),
          borderRadius: BorderRadius.circular(45),
        ),
        child: Center(
          child: TextField(
            obscureText: obscureText,
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  icon,
                  size: 27,
                  color: Colors.white,
                ),
              ),
              hintText: hintText,
              hintStyle: kbodyText,
            ),
            keyboardType: inputType,
            textInputAction: inputAction,
            style: kbodyText,
          ),
        ),
      ),
    );
  }
}
