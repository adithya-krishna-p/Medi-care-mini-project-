import 'package:flutter/material.dart';
import 'package:medi_care/pallete.dart';

class UserImageInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Center(
          child: CircleAvatar(
            backgroundColor:
                Color.fromARGB(255, 140, 212, 251).withOpacity(0.5),
            radius: size.width * 0.14,
            child: Icon(
              Icons.account_circle_outlined,
              size: size.width * 0.14,
              color: kwhite,
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.055,
          left: size.width * 0.56,
          child: Container(
            height: size.height * 0.1,
            width: size.width * 0.1,
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent.shade700,
              shape: BoxShape.circle,
              border: Border.all(
                width: size.width * 0.006,
                color: kwhite,
              ),
            ),
            child: Icon(
              Icons.arrow_upward,
              color: kwhite,
            ),
          ),
        )
      ],
    );
  }
}
