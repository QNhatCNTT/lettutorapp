// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/avatar.dart';
import 'package:lettutorapp/Widget/button.dart';
import 'package:lettutorapp/Widget/country_list.dart';
import 'package:lettutorapp/Widget/datepicker.dart';
import 'package:lettutorapp/Widget/level.dart';
import 'package:lettutorapp/Widget/loading.dart';
import 'package:lettutorapp/Widget/textfield.dart';
import 'package:lettutorapp/Utils/user_info.dart';
import 'package:lettutorapp/Widget/wtlearn.dart';
import 'package:lettutorapp/router.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          title: const Text(
            'Edit Profile',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: const EditProfile(),
      ),
    );
  }
}

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const user = UserInfo.myUser;
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      physics: const BouncingScrollPhysics(),
      children: [
        Avatar(
          imagePath: user.imagePath,
          icon: const Icon(Icons.add_a_photo),
          onPressed: () {},
        ),
        CustomTextField(
          type: TextInputType.text,
          label: 'User Name',
          text: user.userName,
          onChanged: (text) {},
        ),
        CustomTextField(
          type: TextInputType.text,
          label: 'Email',
          text: user.email,
          onChanged: (text) {},
        ),
        const BirthDay(),
        CustomTextField(
          type: TextInputType.number,
          label: 'Phone Number',
          text: user.phoneNumber,
          onChanged: (text) {},
        ),
        const Country(),
        const Level(),
        const WTLearn(),
        const SizedBox(
          height: 30,
        ),
        CustomButton(
          title: 'Save',
          margin: const EdgeInsets.only(bottom: 30),
          height: 50,
          onPressed: () {
            LoadingDialog.showLoadingDialog(context, 'Loading...');
            Future.delayed(const Duration(milliseconds: 2000), () {
              Navigator.of(context).pop();
              Navigator.of(context).popAndPushNamed(Routers.Profile);
            });
          },
        ),
      ],
    );
  }
}
