// ignore_for_file: sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';
import 'package:lettutorapp/Courses/page_1.dart';
import 'package:lettutorapp/Courses/page_2.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CourseScreen(),
      ),
    );
  }
}

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  // ignore: prefer_typing_uninitialized_variables
  var tab;
  @override
  void initState() {
    super.initState();
    tab = 0;
  }

  @override
  Widget build(BuildContext context) {
    var imageURL = 'https://images.indianexpress.com/2020/04/online759.jpg';
    var imageUrl = NetworkImage(imageURL);

    return ListView(
      children: [
        Stack(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      // color: Colors.blue,
                      height: 200,
                      width: double.infinity,
                      child: Image(
                        image: imageUrl,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned.fill(
                        child: Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(
                            Icons.chevron_left,
                            size: 28,
                          )),
                    ))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                tab == 0 ? const TopicTab() : const TutorTab(),
              ],
            ),
            Positioned.fill(
              top: 130,
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 100,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 2.0,
                        spreadRadius: 0.0,
                        offset: Offset(2.0, 2.0),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0, primary: Colors.white),
                            onPressed: () {
                              setState(() {
                                tab = 0;
                                print('0');
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '10',
                                  style: tab == 0
                                      ? const TextStyle(
                                          color: Colors.blue, fontSize: 24)
                                      : const TextStyle(
                                          color: Colors.black, fontSize: 22),
                                ),
                                Text(
                                  'topics',
                                  style: tab == 0
                                      ? const TextStyle(
                                          color: Colors.blue, fontSize: 24)
                                      : const TextStyle(
                                          color: Colors.black, fontSize: 22),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0, primary: Colors.white),
                            onPressed: () {
                              setState(() {
                                tab = 1;
                                print('1');
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '1',
                                  style: tab == 1
                                      ? const TextStyle(
                                          color: Colors.blue, fontSize: 24)
                                      : const TextStyle(
                                          color: Colors.black, fontSize: 22),
                                ),
                                Text(
                                  'tutors',
                                  style: tab == 1
                                      ? const TextStyle(
                                          color: Colors.blue, fontSize: 24)
                                      : const TextStyle(
                                          color: Colors.black, fontSize: 22),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
