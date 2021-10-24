import 'package:flutter/material.dart';
import 'package:lettutorapp/Screens/Pages/Message/component/card_message.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CardMessage(),
        CardMessage(),
        CardMessage(),
        CardMessage(),
        CardMessage(),
      ],
    );
  }
}
