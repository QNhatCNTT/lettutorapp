// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/card_tutor.dart';
import 'package:lettutorapp/Widget/filter_chips.dart';
import 'package:lettutorapp/Widget/navigation_bar.dart';

class TutorsPage extends StatefulWidget {
  const TutorsPage({Key? key}) : super(key: key);

  @override
  _TutorsPageState createState() => _TutorsPageState();
}

class _TutorsPageState extends State<TutorsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(190),
          child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              automaticallyImplyLeading: false,
              title: const Text(
                'Tutors',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              flexibleSpace: Container(
                padding: const EdgeInsets.fromLTRB(15, 30, 15, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.black38.withAlpha(10),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.search,
                            color: Colors.black.withAlpha(120),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search Tutors",
                                hintStyle: TextStyle(
                                  color: Colors.black.withAlpha(120),
                                ),
                                border: InputBorder.none,
                              ),
                              onChanged: (String keyword) {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    const FilterTutor(),
                  ],
                ),
              )),
        ),
        body: const TutorsScreen(),
        bottomNavigationBar: const NaviBotBar(
          selectedIndex: 3,
        ),
      ),
    );
  }
}

class TutorsScreen extends StatelessWidget {
  const TutorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        padding: const EdgeInsets.fromLTRB(15, 5, 15, 20),
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                children: const [
                  CardTutor(),
                  CardTutor(),
                  CardTutor(),
                  CardTutor(),
                  CardTutor(),
                  CardTutor(),
                  CardTutor(),
                  CardTutor(),
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
