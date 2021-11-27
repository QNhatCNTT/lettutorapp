import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/button.dart';
import 'package:lettutorapp/Widget/input.dart';
import 'package:lettutorapp/Widget/loginwith.dart';
import 'package:lettutorapp/router.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Register',
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
        body: const RegisterScreen(),
      ),
    );
  }
}

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
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
                onPressed: () {
                  Navigator.of(context).pushNamed(Routers.Login);
                },
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
              onPressed: () {
                Navigator.of(context).pushNamed(Routers.Login);
              },
            ),
          ],
        ),
      ),
    ]);
  }
}
