import 'package:flutter/material.dart';
import 'package:lettutorapp/Components/button.dart';
import 'package:lettutorapp/Screens/AccountManager/Profile/components/country_list.dart';
import 'package:lettutorapp/Screens/AccountManager/Profile/components/datepicker.dart';
import 'package:lettutorapp/Components/textfield.dart';
import 'package:lettutorapp/Utils/user_info.dart';
import 'components/avatar.dart';
import 'components/level.dart';

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
        CustomTextField(
          type: TextInputType.text,
          label: 'Want To Learn',
          text: 'English, TOEIC',
          onChanged: (text) {},
        ),
        const SizedBox(
          height: 30,
        ),
        CustomButton(
          title: 'Save',
          margin: const EdgeInsets.only(bottom: 30),
          height: 50,
          onPressed: () {},
        ),
      ],
    );
  }
}
