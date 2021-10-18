import 'package:flutter/material.dart';

import 'Profile/edit_profile.dart';
import 'Profile/profile.dart';

class AccountManagerScreen extends StatefulWidget {
  const AccountManagerScreen({Key? key}) : super(key: key);

  @override
  _AccountManagerScreenState createState() => _AccountManagerScreenState();
}

class _AccountManagerScreenState extends State<AccountManagerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {},
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      // body: const Profile(),
      body: const EditProfile(),
    );
  }
}
