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
            const CustomTextButton(
              title: 'Forgot password?',
              alignment: Alignment.centerRight,
            ),
            const CustomButton(
                title: 'Sign in',
                margin: EdgeInsets.only(
                  top: 20,
                )),
            const Divider(
              height: 30,
              indent: 30,
              endIndent: 30,
              thickness: 2,
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: const [
                  Text('Or',
                      style: TextStyle(
                        fontSize: 18,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Continue with',
                      style: TextStyle(
                        fontSize: 18,
                      )),
                ],
              ),
            ),
            const LoginWith(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Don\'t have an account?',
                    style: TextStyle(
                      fontSize: 18,
                    )),
                CustomTextButton(
                  title: 'Sign up',
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
