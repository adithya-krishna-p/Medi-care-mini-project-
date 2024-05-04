import 'package:flutter/material.dart';
import 'package:medi_care/pallete.dart';
import 'package:medi_care/screens/home_screen.dart';
import 'package:medi_care/widgets/round_button.dart';
import 'package:medi_care/widgets/textInputButton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Flexible(
            child: Center(
              child: Text(
                "Medi Care",
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontFamily: "Pacifico",
                  fontSize: 49,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: size.height * 0.06,
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
                inputAction: TextInputAction.done,
                obscureText: true,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'forgetPassword');
                },
                child: Text(
                  "Forget Password ?",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlueAccent.shade700,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              RoundButton(
                buttonName: "LOGIN",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
              ),
              SizedBox(
                height: size.height * 0.05,
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'createNewAccount');
            },
            child: Container(
              child: Text(
                "Create new account",
                style: TextStyle(
                  color: Colors.lightBlueAccent.shade700,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  height: 1.5,
                ),
              ),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1.1,
                    color: Colors.lightBlueAccent.shade700,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.033,
          )
        ],
      ),
    );
  }
}
