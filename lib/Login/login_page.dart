import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/backgroundimage.dart';
import 'package:lettutorapp/Widget/button.dart';
import 'package:lettutorapp/Widget/input.dart';
import 'package:lettutorapp/Widget/loginwith.dart';
import 'package:lettutorapp/Widget/textbutton.dart';
import 'package:lettutorapp/router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(
          top: 10,
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
              child: const Background(imageURL: 'assets/images/logo.png'),
            ),
            const CustomInput(
              iconUrl: 'assets/images/icon_email.png',
              hint: 'Email',
            ),
            const CustomInput(
              iconUrl: 'assets/images/icon_password.png',
              hint: 'Password',
              obsureText: true,
            ),
            CustomTextButton(
              title: 'Forgot password?',
              alignment: Alignment.centerRight,
              onPressed: () {
                Navigator.of(context).pushNamed(Routers.ForgotPassword);
              },
            ),
            CustomButton(
                title: 'Sign in',
                onPressed: () {
                  Navigator.of(context).popAndPushNamed(Routers.Home);
                },
                margin: const EdgeInsets.only(
                  top: 20,
                )),
            const Divider(
              height: 30,
              indent: 30,
              endIndent: 30,
              thickness: 2,
            ),
            LoginWith(
              text: 'Don\'t have an account?',
              title: 'Sign up',
              onPressed: () {
                Navigator.of(context).pushNamed(Routers.Register);
              },
            ),
          ],
        ),
      ),
    ]);
  }
}
