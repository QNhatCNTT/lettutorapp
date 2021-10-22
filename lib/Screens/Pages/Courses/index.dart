import 'package:flutter/material.dart';
import 'package:lettutorapp/Screens/Pages/Courses/course_page.dart';

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: CoursePage()),
    );
  }
}
