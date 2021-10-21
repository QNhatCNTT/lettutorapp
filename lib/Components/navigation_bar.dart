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
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message_outlined),
          label: 'Message',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'Upcoming',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.groups),
          label: 'Tutors',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Setting',
        ),
      ],
      selectedItemColor: Colors.blue[400],
      unselectedItemColor: Colors.black38,
      onTap: _ontap,
    );
  }
}
