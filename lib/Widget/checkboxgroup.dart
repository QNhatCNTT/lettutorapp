// @dart=2.9

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class LearnCheckbox extends StatefulWidget {
  const LearnCheckbox({Key key}) : super(key: key);

  @override
  _LearnCheckboxState createState() => _LearnCheckboxState();
}

class _LearnCheckboxState extends State<LearnCheckbox> {
  List<String> learns = [
    'English for kids',
    'English for Business',
    'Conversational',
    'STARTERS',
    'MOVERS',
    'FLYERS',
    'KET',
    'PET',
    'IELST',
    'TOEFL',
    'TOEIC'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My specialties are',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 10),
          CheckboxGroup(
            labels: learns.map((e) => e).toList(),
            orientation: GroupedButtonsOrientation.VERTICAL,
            margin: const EdgeInsets.only(left: 12.0),
            onChange: (bool isChecked, String label, int index) =>
                print("isChecked: $isChecked   label: $label  index: $index"),
            onSelected: (List<String> checked) =>
                print("checked: ${checked.toString()}"),
          ),
        ],
      ),
    );
  }
}
