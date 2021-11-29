import 'package:flutter/material.dart';
import 'package:lettutorapp/TeacherDetail/pick_date.dart';
import 'package:lettutorapp/Widget/feedback.dart';
import 'package:lettutorapp/Widget/info_courses.dart';
import 'package:lettutorapp/Widget/info_teacher.dart';
import 'package:lettutorapp/Widget/intro_teacher.dart';
import 'package:lettutorapp/router.dart';

class TeacherPage extends StatefulWidget {
  const TeacherPage({Key? key}) : super(key: key);

  @override
  _TeacherPageState createState() => _TeacherPageState();
}

class _TeacherPageState extends State<TeacherPage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: TeacherScreen(),
      ),
    );
  }
}

class TeacherScreen extends StatefulWidget {
  const TeacherScreen({Key? key}) : super(key: key);

  @override
  _TeacherScreenState createState() => _TeacherScreenState();
}

class _TeacherScreenState extends State<TeacherScreen> {
  void _showDateSheet() {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        builder: (context) {
          return const PickDate();
        });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 5),
      children: [
        Column(
          children: [
            Stack(
              children: [
                Container(
                    padding: const EdgeInsets.all(0),
                    width: double.infinity,
                    height: 200,
                    child: const Image(
                        image: AssetImage('assets/images/welcome.png'))),
                Positioned.fill(
                    child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).popAndPushNamed(Routers.Tutors);
                      },
                      icon: const Icon(
                        Icons.chevron_left,
                        size: 28,
                      )),
                ))
              ],
            ),
            const IntroTeacher(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  _showDateSheet();
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  )),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 15,
                  ),
                  child: Text(
                    'Booking',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0, primary: Colors.grey.shade50),
                      onPressed: () {
                        //message
                      },
                      child: Column(
                        children: const [
                          Icon(Icons.message, color: Colors.blue),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Message', style: TextStyle(color: Colors.blue)),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0, primary: Colors.grey.shade50),
                      onPressed: () => showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text(
                              'Report Teacher',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            content: Container(
                              padding: const EdgeInsets.all(0),
                              width: 400,
                              child: const TextField(
                                maxLines: null,
                                maxLength: 150,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            actions: [
                              TextButton(
                                child: const Text('Report'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              TextButton(
                                child: const Text('Cancel'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      ),
                      child: Column(
                        children: const [
                          Icon(Icons.report, color: Colors.blue),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Report', style: TextStyle(color: Colors.blue)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const InfoTeacher(),
            const InfoCourses(),
            const Feedbacks(),
          ],
        ),
      ],
    );
  }
}
