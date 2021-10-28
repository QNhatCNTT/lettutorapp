// @dart=2.9
import 'package:flutter/material.dart';
import 'package:lettutorapp/Components/textfield.dart';
import 'package:lettutorapp/Screens/AccountManager/Profile/components/avatar.dart';
import 'package:lettutorapp/Screens/AccountManager/Profile/components/country_list.dart';
import 'package:lettutorapp/Screens/AccountManager/Profile/components/datepicker.dart';
import 'package:lettutorapp/Screens/Pages/BecomeToTeacher/component/languages.dart';
import 'package:lettutorapp/Screens/Pages/BecomeToTeacher/component/radiogroup.dart';
import 'package:lettutorapp/Screens/Pages/BecomeToTeacher/component/tagline.dart';

import 'checkboxgroup.dart';

class ProfileToTeacher extends StatefulWidget {
  const ProfileToTeacher({Key key}) : super(key: key);

  @override
  _ProfileToTeacherState createState() => _ProfileToTeacherState();
}

class _ProfileToTeacherState extends State<ProfileToTeacher> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              const Text(
                'Set up your tutor profile',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const TagLine(name: 'Basic info'),
              Avatar(
                imagePath:
                    'https://www.orissapost.com/wp-content/uploads/2020/06/carryminati-1024x576.jpg',
                icon: const Icon(Icons.add_a_photo),
                onPressed: () {},
              ),
              CustomTextField(
                  label: 'Tutoring name',
                  text: 'username1',
                  onChanged: (val) {},
                  type: TextInputType.text),
              const Country(),
              const BirthDay(),
              const TagLine(name: 'Curriculum Vitae'),
              CustomTextField(
                label: 'Interests',
                hint: 'interest, hobbies, memorable life experiences',
                onChanged: (val) {},
                type: TextInputType.text,
              ),
              CustomTextField(
                label: 'Experience',
                onChanged: (val) {},
                type: TextInputType.text,
              ),
              CustomTextField(
                label: 'Current or Previous Profession',
                onChanged: (val) {},
                type: TextInputType.text,
              ),
              const TagLine(name: 'Languages'),
              const Languages(),
              const TagLine(name: 'Who I Teach'),
              CustomTextField(
                label: 'Introduction',
                hint: 'Example: I was a doctor for 35 years and can help you',
                onChanged: (val) {},
                type: TextInputType.text,
              ),
              const RadioLevel(),
              const LearnCheckbox(),
            ],
          )),
    );
  }
}
