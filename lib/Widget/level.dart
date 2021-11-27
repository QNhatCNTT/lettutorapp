// @dart=2.9
import 'package:flutter/material.dart';

class Level extends StatefulWidget {
  const Level({Key key}) : super(key: key);

  @override
  _LevelState createState() => _LevelState();
}

class _LevelState extends State<Level> {
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
            'My Level',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey)),
            height: 60,
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                hint: const Text('Select Level',
                    style: TextStyle(fontSize: 15.5)),
                icon: const Icon(Icons.keyboard_arrow_down),
                iconSize: 26,
                isExpanded: true,
                value: valueChoose,
                onChanged: (val) {
                  setState(() {
                    valueChoose = val;
                  });
                },
                items: levels.map((val) {
                  return DropdownMenuItem(
                    child: Text(val),
                    value: val,
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
