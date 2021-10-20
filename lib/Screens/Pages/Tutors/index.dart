import 'package:flutter/material.dart';
import 'package:lettutorapp/Components/navigation_bar.dart';

import 'tutors_page.dart';

class Tutors extends StatefulWidget {
  const Tutors({Key? key}) : super(key: key);

  @override
  _TutorsState createState() => _TutorsState();
}

class _TutorsState extends State<Tutors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          padding: const EdgeInsets.only(left: 2),
          child: const Text(
            'Tutors',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: const TutorsPage(),
      bottomNavigationBar: const NaviBotBar(),
    );
  }
}
