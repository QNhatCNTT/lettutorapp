// @dart=2.9
import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/textfield.dart';
import 'package:lettutorapp/Widget/avatar.dart';
import 'package:lettutorapp/Widget/country_list.dart';
import 'package:lettutorapp/Widget/datepicker.dart';
import 'package:lettutorapp/Widget/languages.dart';
import 'package:lettutorapp/Widget/radiogroup.dart';
import 'package:lettutorapp/Widget/tagline.dart';

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
                    'https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_960_720.png',
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
