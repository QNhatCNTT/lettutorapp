import 'package:flutter/material.dart';
import 'package:lettutorapp/Components/button.dart';
import 'package:lettutorapp/Components/icon_button.dart';
import 'package:lettutorapp/utils/user_info.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const user = UserInfo.myUser;
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                // backgroundColor: Colors.white,
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(40),
                //   side: const BorderSide(
                //     color: Colors.grey,
                //   ),
                // ),
                ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(user.imagePath),
                  maxRadius: 40,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(user.userName,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(user.email,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ))
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomIconButton(
            onPressed: () {},
            text: 'View Feedbacks',
          ),
          CustomIconButton(
            onPressed: () {},
            text: 'Booking History',
          ),
          CustomIconButton(
            onPressed: () {},
            text: 'Session History',
          ),
          CustomIconButton(
            onPressed: () {},
            text: 'Advanced Settings',
          ),
          const SizedBox(
            height: 30,
          ),
          CustomIconButton(
            onPressed: () {},
            text: 'Our Website',
          ),
          CustomIconButton(
            onPressed: () {},
            text: 'Facebook',
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            title: 'Log out',
            onPressed: () {},
            margin: const EdgeInsets.only(bottom: 10),
            height: 50,
          ),
        ],
      ),
    );
  }
}
