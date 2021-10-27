// @dart=2.9
import 'package:flutter/material.dart';
import 'package:lettutorapp/Screens/Pages/Tutors/index.dart';
// import 'Screens/AccountManager/Profile/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Tutors(),
    );
  }
}
