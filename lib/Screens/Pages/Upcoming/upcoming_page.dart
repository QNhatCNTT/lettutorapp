import 'package:flutter/material.dart';
import 'package:lettutorapp/Screens/Pages/Upcoming/components/card_upcoming.dart';

class UpcomingPage extends StatelessWidget {
  const UpcomingPage({Key? key}) : super(key: key);

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
