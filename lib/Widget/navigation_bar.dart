import 'package:flutter/material.dart';
import '../router.dart';

class NaviBotBar extends StatefulWidget {
  const NaviBotBar({
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);
  final int selectedIndex;
  @override
  State<NaviBotBar> createState() => _NaviBotBarState();
}

class _NaviBotBarState extends State<NaviBotBar> {
  late int _selectedIndex;
  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  static const List<String> _widgetOptions = <String>[
    Routers.Home,
    Routers.Message,
    Routers.Upcoming,
    Routers.Tutors,
    Routers.Settings,
  ];
  void _ontap(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.of(context).popAndPushNamed(_widgetOptions[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
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
