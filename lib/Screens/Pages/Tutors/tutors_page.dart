import 'package:flutter/material.dart';
import 'components/card_tutor.dart';

class TutorsPage extends StatelessWidget {
  const TutorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        padding: const EdgeInsets.fromLTRB(15, 5, 15, 20),
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                children: const [
                  CardTutor(),
                  CardTutor(),
                  CardTutor(),
                  CardTutor(),
                  CardTutor(),
                  CardTutor(),
                  CardTutor(),
                  CardTutor(),
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
