import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/card_upcoming.dart';
import 'package:lettutorapp/Widget/navigation_bar.dart';

class UpcomingPage extends StatelessWidget {
  const UpcomingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: const Text(
            'Upcoming',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: const UpcomingScreen(),
        bottomNavigationBar: const NaviBotBar(
          selectedIndex: 2,
        ),
      ),
    );
  }
}

class UpcomingScreen extends StatelessWidget {
  const UpcomingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: const [
              CardUpcoming(),
              CardUpcoming(),
              CardUpcoming(),
              CardUpcoming(),
              CardUpcoming(),
              CardUpcoming(),
              CardUpcoming(),
            ],
          ),
        ),
      ],
    );
  }
}
