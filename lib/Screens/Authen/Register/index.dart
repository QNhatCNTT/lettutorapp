import 'package:flutter/material.dart';
import 'package:lettutorapp/Screens/Authen/Register/register_ui.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

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
      body: const SafeArea(child: RegisterScreen()),
    );
  }
}
