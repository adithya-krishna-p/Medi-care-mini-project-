import 'package:flutter/material.dart';
import 'package:medi_care/pallete.dart';
import 'package:medi_care/widgets/round_button.dart';
import 'package:medi_care/widgets/textInputButton.dart';

class ForgetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.lightBlueAccent.shade700,
          ),
        ),
        title: Text(
          "Forget Password",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.lightBlueAccent.shade700,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Flexible(
            child: SizedBox(
              height: size.height * 0.09,
            ),
          ),
          Center(
            child: Container(
              width: size.width * 0.85,
              child: Text(
                "Enter your Email. We will send instruction to reset your Password",
                style: TextStyle(
                  color: Colors.lightBlueAccent.shade700,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.2,
          ),
          TextInputButton(
            icon: Icons.email,
            hintText: "Email",
            inputType: TextInputType.emailAddress,
            inputAction: TextInputAction.done,
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          RoundButton(
            buttonName: "Send",
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
