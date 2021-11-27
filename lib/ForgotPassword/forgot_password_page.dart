import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/backgroundimage.dart';
import 'package:lettutorapp/Widget/button.dart';
import 'package:lettutorapp/Widget/input.dart';
import 'package:lettutorapp/router.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Forgot Password',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: BackButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: const ForgotPasswordScreen(),
      ),
    );
  }
}

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(
          top: 20,
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
              onPressed: () {
                Navigator.of(context).pushNamed(Routers.Login);
              },
              margin: const EdgeInsets.only(
                top: 40,
                bottom: 40,
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}