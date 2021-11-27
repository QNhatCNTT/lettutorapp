import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/tag.dart';
import 'package:lettutorapp/Modles/user.dart';
import 'package:lettutorapp/Utils/user_info.dart';
import 'package:lettutorapp/Widget/avatar.dart';
import 'package:lettutorapp/Widget/list_info_string.dart';
import 'package:lettutorapp/router.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          title: const Text(
            'Profile',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: const Profile(),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const user = UserInfo.myUser;
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Avatar(
          imagePath: user.imagePath,
          icon: const Icon(Icons.edit),
          onPressed: () {
            Navigator.of(context).pushNamed(Routers.EditProfile);
          },
        ),
        const SizedBox(
          height: 20,
        ),
        userName(user),
        const SizedBox(
          height: 20,
        ),
        ListInfoString(label: 'Birth Of Day:', text: user.birthdate),
        ListInfoString(label: 'Phone Number:', text: user.phoneNumber),
        ListInfoString(label: 'Country:', text: user.country),
        ListInfoString(label: 'Level:', text: user.myLevel),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
            vertical: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              Text(
                'Want to learn:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Tag(text: 'English', size: 18),
              Tag(text: 'TOEIC', size: 18),
            ],
          ),
        ),
      ],
    );
  }

  Widget userName(User user) => Column(
        children: [
          Text(
            user.userName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          )
        ],
      );
}
