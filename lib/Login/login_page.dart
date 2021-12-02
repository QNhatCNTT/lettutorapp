import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lettutorapp/Validate/login_validate.dart';
import 'package:lettutorapp/Widget/backgroundimage.dart';
import 'package:lettutorapp/Widget/button.dart';
import 'package:lettutorapp/Widget/input.dart';
import 'package:lettutorapp/Widget/loading.dart';
import 'package:lettutorapp/Widget/loginwith.dart';
import 'package:lettutorapp/Widget/textbutton.dart';
import 'package:lettutorapp/router.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginValidation(),
      child: const SafeArea(
        child: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late bool isLogin;
  TextEditingController? emailController;
  TextEditingController? passwordController;
  @override
  void initState() {
    isLogin = false;
    getSharedPreferences();
    super.initState();
  }

  Future<void> getSharedPreferences() async {
    final pref = await SharedPreferences.getInstance();
    final storeEmail = pref.getString('email') ?? '';
    final storePassword = pref.getString('password') ?? '';

    setState(() {
      emailController = TextEditingController(text: storeEmail);
      passwordController = TextEditingController(text: storePassword);
    });
  }

  Future<void> loginPressed() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('email', emailController!.value.text);
    prefs.setString('password', passwordController!.value.text);
  }

  @override
  void dispose() {
    emailController?.dispose();
    passwordController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final loginValidation = Provider.of<LoginValidation>(context);
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
            CustomInput(
              controller: emailController,
              errorText: loginValidation.email.error,
              onChanged: (String value) {
                loginValidation.changeEmail(value);
              },
              iconUrl: 'assets/images/icon_email.png',
              hint: 'Email',
            ),
            CustomInput(
              controller: passwordController,
              errorText: loginValidation.password.error,
              onChanged: (String value) {
                loginValidation.changePassword(value);
              },
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
                  LoadingDialog.showLoadingDialog(context, 'Loading...');
                  Future.delayed(const Duration(milliseconds: 900), () {
                    if (!loginValidation.isValid) {
                      LoadingDialog.hideLoadingDialog(context);
                      _showError(
                          context, 'Error', 'Email or password is not valid');
                    } else {
                      if ((emailController!.value.text == 'admin@gmail.com') &&
                          (passwordController!.value.text == 'admin123')) {
                        setState(() {
                          isLogin = true;
                          loginPressed();
                        });
                        LoadingDialog.hideLoadingDialog(context);
                        Navigator.of(context).popAndPushNamed(Routers.Home);
                      } else {
                        LoadingDialog.hideLoadingDialog(context);
                        _showError(context, 'Error',
                            'Email or password incorrect please try again');
                      }
                    }
                  });
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

  _showError(BuildContext context, String title, String description) {
    MotionToast.error(
      title: title,
      titleStyle: const TextStyle(fontWeight: FontWeight.bold),
      description: description,
      animationType: ANIMATION.FROM_TOP,
      position: MOTION_TOAST_POSITION.TOP,
      width: 300,
    ).show(context);
  }
}
