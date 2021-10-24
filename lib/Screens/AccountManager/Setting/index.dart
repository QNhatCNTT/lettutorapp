import 'package:flutter/material.dart';
import 'package:lettutorapp/Screens/AccountManager/Setting/advanced_settings.dart';
// import 'package:lettutorapp/Screens/AccountManager/Setting/booking_history.dart';
// import 'package:lettutorapp/Screens/AccountManager/Setting/feedback_list.dart';
// import 'package:lettutorapp/Screens/AccountManager/Setting/setting.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

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
      body: const SafeArea(child: AdvSetting()),
    );
  }
}
