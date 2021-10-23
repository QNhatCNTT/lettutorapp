import 'package:flutter/material.dart';
import 'package:lettutorapp/Components/navigation_bar.dart';
import 'package:lettutorapp/utils/user_info.dart';

import 'home_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const user = UserInfo.myUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          padding: const EdgeInsets.only(left: 2),
          child: const Text(
            'Home',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              iconSize: 35,
              onPressed: () {},
              icon: CircleAvatar(
                backgroundImage: NetworkImage(user.imagePath),
              ),
            ),
          )
        ],
      ),
      body: const SafeArea(child: HomePage()),
      bottomNavigationBar: const NaviBotBar(),
    );
  }
}
