import 'package:flutter/material.dart';
import 'package:lettutorapp/Components/filtter_chip.dart';
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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(170.0),
        child: AppBar(
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
            flexibleSpace: Container(
              padding: const EdgeInsets.fromLTRB(15, 90, 15, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
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
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          FilterTag(chipName: 'English for Kids'),
                          SizedBox(
                            width: 5,
                          ),
                          FilterTag(chipName: 'Business English'),
                          SizedBox(
                            width: 5,
                          ),
                          FilterTag(chipName: 'Conversational English'),
                          SizedBox(
                            width: 5,
                          ),
                          FilterTag(chipName: 'STARTERS'),
                          SizedBox(
                            width: 5,
                          ),
                          FilterTag(chipName: 'MOVERS'),
                          SizedBox(
                            width: 5,
                          ),
                          FilterTag(chipName: 'FLYERS'),
                          SizedBox(
                            width: 5,
                          ),
                          FilterTag(chipName: 'TOEIC'),
                          SizedBox(
                            width: 5,
                          ),
                          FilterTag(chipName: 'TOEFL'),
                          SizedBox(
                            width: 5,
                          ),
                          FilterTag(chipName: 'IELTS'),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
      body: const TutorsPage(),
      bottomNavigationBar: const NaviBotBar(),
    );
  }
}
