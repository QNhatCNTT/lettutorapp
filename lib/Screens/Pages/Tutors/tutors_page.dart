import 'package:flutter/material.dart';

import 'components/card_tutor.dart';

class TutorsPage extends StatelessWidget {
  const TutorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 30),
        child: Column(
          children: [
            // Container(
            //   margin: const EdgeInsets.only(top: 10),
            //   padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
            //   decoration: BoxDecoration(
            //     color: Colors.black38.withAlpha(10),
            //     borderRadius: const BorderRadius.all(
            //       Radius.circular(20),
            //     ),
            //   ),
            //   child: Row(
            //     children: <Widget>[
            //       Icon(
            //         Icons.search,
            //         color: Colors.black.withAlpha(120),
            //       ),
            //       const SizedBox(
            //         width: 20,
            //       ),
            //       Expanded(
            //         child: TextField(
            //           decoration: InputDecoration(
            //             hintText: "Search Tutors",
            //             hintStyle: TextStyle(
            //               color: Colors.black.withAlpha(120),
            //             ),
            //             border: InputBorder.none,
            //           ),
            //           onChanged: (String keyword) {},
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // Container(
            //   padding: const EdgeInsets.symmetric(horizontal: 10),
            //   child: SingleChildScrollView(
            //     scrollDirection: Axis.horizontal,
            //     child: Row(
            //       children: const [
            //         ChoiceChip(
            //           label: Text('All'),
            //           selected: true,
            //         ),
            //         SizedBox(
            //           width: 7,
            //         ),
            //         ChoiceChip(
            //           label: Text('English'),
            //           selected: false,
            //         ),
            //         SizedBox(
            //           width: 7,
            //         ),
            //         ChoiceChip(
            //           label: Text('TOEIC'),
            //           selected: false,
            //         ),
            //         SizedBox(
            //           width: 7,
            //         ),
            //         ChoiceChip(
            //           label: Text('TOEFL'),
            //           selected: false,
            //         ),
            //         SizedBox(
            //           width: 7,
            //         ),
            //         ChoiceChip(
            //           label: Text('IELTS'),
            //           selected: false,
            //         ),
            //         SizedBox(
            //           width: 7,
            //         ),
            //         ChoiceChip(
            //           label: Text('TOEIC'),
            //           selected: false,
            //         ),
            //         SizedBox(
            //           width: 7,
            //         ),
            //         ChoiceChip(
            //           label: Text('TOEIC'),
            //           selected: false,
            //         ),
            //         SizedBox(
            //           width: 7,
            //         ),
            //         ChoiceChip(
            //           label: Text('TOEIC'),
            //           selected: false,
            //         ),
            //         SizedBox(
            //           width: 7,
            //         ),
            //         ChoiceChip(
            //           label: Text('TOEIC'),
            //           selected: false,
            //         ),
            //         SizedBox(
            //           width: 7,
            //         ),
            //         ChoiceChip(
            //           label: Text('TOEIC'),
            //           selected: false,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
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
    );
  }
}
