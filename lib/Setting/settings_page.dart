import 'package:flutter/material.dart';
import 'package:lettutorapp/Utils/user_info.dart';
import 'package:lettutorapp/Widget/button.dart';
import 'package:lettutorapp/Widget/icon_button.dart';
import 'package:lettutorapp/Widget/loading.dart';
import 'package:lettutorapp/Widget/navigation_bar.dart';
import 'package:lettutorapp/router.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Settings',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: const SettingScreen(),
        bottomNavigationBar: const NaviBotBar(
          selectedIndex: 4,
        ),
      ),
    );
  }
}

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
            onPressed: () {
              Navigator.of(context).pushNamed(Routers.Profile);
            },
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
            onPressed: () {
              Navigator.of(context).pushNamed(Routers.Become2Teacher);
            },
            text: 'Become To Teacher',
          ),
          const SizedBox(
            height: 30,
          ),
          CustomIconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Routers.ViewFeedback);
            },
            text: 'View Feedbacks',
          ),
          CustomIconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Routers.BookingHistory);
            },
            text: 'Booking History',
          ),
          CustomIconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Routers.SessionHistory);
            },
            text: 'Session History',
          ),
          CustomIconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Routers.AdvSettings);
            },
            text: 'Advanced Settings',
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            title: 'Log out',
            onPressed: () {
              LoadingDialog.showLoadingDialog(context, 'Loading...');
              Future.delayed(const Duration(milliseconds: 900), () {
                LoadingDialog.hideLoadingDialog(context);
                Navigator.of(context).pushNamed(Routers.Welcome);
              });
            },
            margin: const EdgeInsets.only(bottom: 10),
            height: 50,
          ),
        ],
      ),
    );
  }
}
