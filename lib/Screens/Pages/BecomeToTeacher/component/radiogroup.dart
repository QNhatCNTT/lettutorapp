// @dart=2.9

import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class RadioLevel extends StatefulWidget {
  const RadioLevel({Key key}) : super(key: key);

  @override
  _RadioLevelState createState() => _RadioLevelState();
}

enum SingingCharacter { lafayette, jefferson }

class _RadioLevelState extends State<RadioLevel> {
  String valueChoose;
  List<String> levels = ['Beginner', 'Intermediate', 'Advanced'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'I am best at teaching students who are',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 10),
          RadioButtonGroup(
            labels: levels.map((val) {
              return val;
            }).toList(),
            orientation: GroupedButtonsOrientation.VERTICAL,
            margin: const EdgeInsets.only(left: 12.0),
            onSelected: (String selected) => setState(() {
              valueChoose = selected;
            }),
            onChange: (String value, index) => setState(() {
              valueChoose = value;
            }),
            picked: valueChoose,
          ),
        ],
      ),
    );
  }
}
