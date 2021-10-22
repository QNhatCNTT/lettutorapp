import 'package:flutter/material.dart';
import 'package:lettutorapp/Components/backgroundimage.dart';
import 'package:lettutorapp/Components/button.dart';
import 'package:lettutorapp/Components/input.dart';
import 'package:lettutorapp/Components/loginwith.dart';
import 'package:lettutorapp/Components/textbutton.dart';

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
              onPressed: () {},
            ),
            CustomButton(
                title: 'Sign in',
                onPressed: () {},
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
              onPressed: () {},
            ),
          ],
        ),
      ),
    ]);
  }
}
