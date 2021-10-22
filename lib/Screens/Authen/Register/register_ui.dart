import 'package:flutter/material.dart';
import 'package:lettutorapp/Components/button.dart';
import 'package:lettutorapp/Components/input.dart';
import 'package:lettutorapp/Components/loginwith.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(
          top: 30,
          right: 20,
          left: 20,
        ),
        child: Column(
          children: [
            const CustomInput(
              iconUrl: 'assets/images/icon_name.png',
              hint: 'Username',
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
            const CustomInput(
              iconUrl: 'assets/images/icon_password.png',
              hint: 'Confirm password',
              obsureText: true,
            ),
            CustomButton(
                title: 'Register',
                onPressed: () {},
                margin: const EdgeInsets.only(
                  top: 50,
                )),
            const Divider(
              height: 30,
              indent: 30,
              endIndent: 30,
              thickness: 2,
            ),
            LoginWith(
              text: 'Already have an account?',
              title: 'Log in',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
