import 'package:flutter/material.dart';

import 'ForgotPassword/forgot_password_ui.dart';

// import 'Login/login_ui.dart';
// import 'Register/register_ui.dart';

class AuthenScreens extends StatefulWidget {
  const AuthenScreens({Key? key}) : super(key: key);

  @override
  _AuthenScreensState createState() => _AuthenScreensState();
}

class _AuthenScreensState extends State<AuthenScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {},
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const SafeArea(child: ForgotPasswordScreen()),
    );
  }
}
