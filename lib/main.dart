import 'package:flutter/material.dart';
import 'package:medi_care/screens/forget_password_screen.dart';
import 'package:medi_care/screens/home_screen.dart';
import 'package:medi_care/screens/login_screen.dart';
import 'package:medi_care/screens/register_screen.dart';

void main() {
  runApp(MediCareApp());
}

class MediCareApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/loginScreen',
      routes: {
        '/loginScreen': (context) => LoginScreen(),
        'createNewAccount': (context) => RegisterScreen(),
        'forgetPassword': (contect) => ForgetPasswordScreen(),
        'homeScreen': (context) => HomeScreen(),
      },
    );
  }
}
