import 'package:flutter/material.dart';
import 'package:lettutorapp/Validate/register_validate.dart';
import 'package:lettutorapp/Widget/button.dart';
import 'package:lettutorapp/Widget/input.dart';
import 'package:lettutorapp/Widget/loading.dart';
import 'package:lettutorapp/Widget/loginwith.dart';
import 'package:lettutorapp/router.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegisterValidate(),
      child: SafeArea(
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
      ),
    );
  }
}

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final registerValidate = Provider.of<RegisterValidate>(context);
    TextEditingController? emailController;
    TextEditingController? passwordController;
    TextEditingController? userNameController;
    TextEditingController? confirmPasswordController;
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
            CustomInput(
              controller: userNameController,
              errorText: registerValidate.userName.error,
              onChanged: (String value) {
                registerValidate.changeUserName(value);
              },
              iconUrl: 'assets/images/icon_name.png',
              hint: 'Username',
            ),
            CustomInput(
              controller: emailController,
              errorText: registerValidate.email.error,
              onChanged: (String value) {
                registerValidate.changeEmail(value);
              },
              iconUrl: 'assets/images/icon_email.png',
              hint: 'Email',
            ),
            CustomInput(
              controller: passwordController,
              errorText: registerValidate.password.error,
              onChanged: (String value) {
                registerValidate.changePassword(value);
              },
              iconUrl: 'assets/images/icon_password.png',
              hint: 'Password',
              obsureText: true,
            ),
            CustomInput(
              controller: confirmPasswordController,
              errorText: registerValidate.confirmPassword.error,
              onChanged: (String value) {
                registerValidate.changeConfirmPassword(value);
              },
              iconUrl: 'assets/images/icon_password.png',
              hint: 'Confirm password',
              obsureText: true,
            ),
            CustomButton(
                title: 'Register',
                onPressed: () {
                  LoadingDialog.showLoadingDialog(context, 'Loading...');
                  Future.delayed(const Duration(milliseconds: 2000), () {
                    if (!registerValidate.isValid) {
                      LoadingDialog.hideLoadingDialog(context);
                      _showError(context, 'Error', 'Register failed!');
                    } else {
                      LoadingDialog.hideLoadingDialog(context);
                      Navigator.of(context).pushNamed(Routers.Login);
                    }
                  });
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
