import 'package:flutter/material.dart';
import 'package:lettutorapp/Screens/Pages/Teacher/teacher_page.dart';

class Teacher extends StatefulWidget {
  const Teacher({Key? key}) : super(key: key);

  @override
  _TeacherState createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: TeacherPage()),
    );
  }
}
