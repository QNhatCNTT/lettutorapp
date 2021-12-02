import 'package:flutter/material.dart';
import 'package:lettutorapp/Validate/forgot_password_validate.dart';
import 'package:lettutorapp/Widget/backgroundimage.dart';
import 'package:lettutorapp/Widget/button.dart';
import 'package:lettutorapp/Widget/input.dart';
import 'package:lettutorapp/Widget/loading.dart';
import 'package:lettutorapp/router.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:provider/provider.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ResetValidate(),
      child: SafeArea(
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
      ),
    );
  }
}

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final forgotPasswordValidate = Provider.of<ResetValidate>(context);
    TextEditingController? emailController;
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
            CustomInput(
              controller: emailController,
              errorText: forgotPasswordValidate.email.error,
              onChanged: (String value) {
                forgotPasswordValidate.changeEmail(value);
              },
              iconUrl: 'assets/images/icon_email.png',
              hint: 'Email',
            ),
            CustomButton(
              title: 'Reset password',
              onPressed: () {
                LoadingDialog.showLoadingDialog(context, 'Loading...');
                Future.delayed(const Duration(milliseconds: 900), () {
                  if (!forgotPasswordValidate.isValid) {
                    LoadingDialog.hideLoadingDialog(context);
                    _showError(context, 'Error', 'Email is not empty');
                  } else {
                    LoadingDialog.hideLoadingDialog(context);
                    _showSuccess(context, 'Success',
                        'Please check your email to reset your password');
                    // Future.delayed(const Duration(milliseconds: 1000), () {
                    //   Navigator.of(context).pop();
                    //   // Navigator.of(context).pushNamed(Routers.Login);
                    // });
                  }
                });
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

  _showSuccess(BuildContext context, String title, String description) {
    MotionToast.success(
      title: title,
      titleStyle: const TextStyle(fontWeight: FontWeight.bold),
      description: description,
      animationType: ANIMATION.FROM_TOP,
      position: MOTION_TOAST_POSITION.TOP,
      width: 300,
    ).show(context);
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
