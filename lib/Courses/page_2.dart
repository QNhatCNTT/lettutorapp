import 'package:flutter/material.dart';

class TutorTab extends StatelessWidget {
  const TutorTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 30),
        child: Text('Have one Tutor'));
  }
}
