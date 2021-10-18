import 'package:flutter/material.dart';
import 'package:lettutorapp/Components/button.dart';
import 'package:lettutorapp/Components/textfield.dart';
import 'package:lettutorapp/utils/user_info.dart';

import 'components/avatar.dart';

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
        ),
        CustomTextField(
          label: 'User Name',
          text: user.userName,
          onChanged: (userName) {},
        ),
        CustomTextField(
          label: 'Email',
          text: user.email,
          onChanged: (email) {},
        ),
        CustomTextField(
          label: 'Birth Of Day',
          text: user.birthdate,
          onChanged: (birthdate) {},
        ),
        CustomTextField(
          label: 'Phone Number',
          text: user.phoneNumber,
          onChanged: (phoneNumber) {},
        ),
        CustomTextField(
          label: 'Country',
          text: user.country,
          onChanged: (country) {},
        ),
        CustomTextField(
          label: 'Level',
          text: user.myLevel,
          onChanged: (myLevel) {},
        ),
        CustomTextField(
          label: 'Want To Learn',
          text: user.wantToLearn.toString(),
          onChanged: (wantToLearn) {},
        ),
        const SizedBox(
          height: 30,
        ),
        CustomButton(
          title: 'Save',
          margin: const EdgeInsets.only(bottom: 30),
          onPressed: () {},
        ),
      ],
    );
  }
}
