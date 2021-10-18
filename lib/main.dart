import 'package:flutter/material.dart';

import 'Screens/AccountManager/index.dart';
import 'Screens/Authen/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AccountManagerScreen(),
    );
  }
}
