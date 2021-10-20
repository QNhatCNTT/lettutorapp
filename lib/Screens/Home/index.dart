import 'package:flutter/material.dart';
import 'package:lettutorapp/utils/user_info.dart';

import 'Page/home_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const user = UserInfo.myUser;
  void _ontap(currentIndex) {}
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
              fontSize: 18,
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
      body: const HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Message',
            icon: Icon(Icons.message_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Upcoming',
            icon: Icon(Icons.history),
          ),
          BottomNavigationBarItem(
            label: 'Tutors',
            icon: Icon(Icons.groups),
          ),
          BottomNavigationBarItem(
            label: 'Setting',
            icon: Icon(Icons.settings),
          ),
        ],
        selectedItemColor: Colors.blue[400],
        unselectedItemColor: Colors.black38,
        onTap: _ontap,
      ),
    );
  }
}
