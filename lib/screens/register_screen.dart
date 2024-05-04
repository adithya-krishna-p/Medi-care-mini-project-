import 'package:flutter/material.dart';
import 'package:medi_care/pallete.dart';
import 'package:medi_care/widgets/round_button.dart';
import 'package:medi_care/widgets/textInputButton.dart';
import 'package:medi_care/widgets/userImageInput.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            UserImageInput(),
            SizedBox(
              height: size.height * 0.1,
            ),
            TextInputButton(
              icon: Icons.account_circle_rounded,
              hintText: "User Name",
              inputType: TextInputType.name,
              inputAction: TextInputAction.next,
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            TextInputButton(
              icon: Icons.email_outlined,
              hintText: "Email",
              inputType: TextInputType.emailAddress,
              inputAction: TextInputAction.next,
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            TextInputButton(
              icon: Icons.lock,
              hintText: "Password",
              inputType: TextInputType.visiblePassword,
              inputAction: TextInputAction.next,
              obscureText: true,
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            TextInputButton(
              icon: Icons.lock,
              hintText: "Confirm Password",
              inputType: TextInputType.visiblePassword,
              inputAction: TextInputAction.done,
              obscureText: true,
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            RoundButton(
              buttonName: "Register",
              onPressed: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account ? ",
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 20,
                    height: 1.5,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "login",
                    style: TextStyle(
                      color: Colors.lightBlueAccent.shade700,
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
