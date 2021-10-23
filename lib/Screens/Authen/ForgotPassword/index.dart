import 'package:flutter/material.dart';
import 'package:lettutorapp/Screens/Authen/ForgotPassword/forgot_password_ui.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

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
