import 'package:flutter/material.dart';
// import 'Screens/Pages/Home/index.dart';
import 'Screens/Pages/Tutors/index.dart';
// import 'Screens/AccountManager/index.dart';

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
      home: const Tutors(),
    );
  }
}
