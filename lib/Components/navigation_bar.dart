import 'package:flutter/material.dart';

class NaviBotBar extends StatelessWidget {
  const NaviBotBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _ontap(currentIndex) {}
    return BottomNavigationBar(
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
    );
  }
}
