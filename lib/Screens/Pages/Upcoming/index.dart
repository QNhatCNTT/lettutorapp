import 'package:flutter/material.dart';
import 'package:lettutorapp/Components/navigation_bar.dart';

import 'upcoming_page.dart';

class Upcoming extends StatelessWidget {
  const Upcoming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          padding: const EdgeInsets.only(left: 2),
          child: const Text(
            'Upcoming',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: const SafeArea(child: UpcomingPage()),
      bottomNavigationBar: const NaviBotBar(),
    );
  }
}
