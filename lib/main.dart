import 'package:flutter/material.dart';
// import 'package:lettutorapp/Screens/AccountManager/Setting/index.dart';
// import 'package:lettutorapp/Screens/Pages/Message/index.dart';
// import 'package:lettutorapp/Screens/AccountManager/Setting/session_history.dart';
// import 'Screens/Pages/Courses/index.dart';
import 'Screens/Pages/Home/index.dart';
// import 'Screens/Pages/Teacher/index.dart';
// import 'Screens/Pages/Tutors/index.dart';
// import 'Screens/Pages/Upcoming/index.dart';
// import 'Screens/Authen/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );
  }
}
