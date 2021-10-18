import 'package:flutter/material.dart';
import 'package:lettutorapp/Components/backgroundimage.dart';
import 'package:lettutorapp/Components/button.dart';
import 'package:lettutorapp/Components/input.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(
          top: 50,
          right: 20,
          left: 20,
        ),
        child: Column(
          children: [
            Container(
              height: 300,
              width: 300,
              padding: const EdgeInsets.only(
                bottom: 10,
              ),
              child: const Background(
                imageURL: 'assets/images/welcome.png',
              ),
            ),
            const Text(
              'Enter your email address to reset your password. Thanks!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const CustomInput(
              iconUrl: 'assets/images/icon_email.png',
              hint: 'Email',
            ),
            CustomButton(
              title: 'Reset password',
              onPressed: () {},
              margin: const EdgeInsets.only(
                top: 40,
                bottom: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
