// @dart=2.9
import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:lettutorapp/Provider/tutor_provider.dart';
import 'package:provider/provider.dart';

class FilterTutor extends StatefulWidget {
  const FilterTutor({Key key}) : super(key: key);

  @override
  _FilterTutorState createState() => _FilterTutorState();
}

class _FilterTutorState extends State<FilterTutor> {
  int tag = 0;
  List<String> options = [
    'All',
    'English for Kids',
    'Business English',
    'Conversational English',
    'STARTERS',
    'MOVERS',
    'FLYERS',
    'TOEFL',
    'TOEIC',
    'IELST'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: ChipsChoice<int>.single(
          value: tag,
          onChanged: (val) {
            print(options[val]);
            setState(() => tag = val);
            Provider.of<TutorProvider>(context, listen: false)
                .changeFilter(options[val]);
          },
          choiceItems: C2Choice.listFrom<int, String>(
            source: options,
            value: (i, v) => i,
            label: (i, v) => v,
          ),
          choiceStyle: C2ChoiceStyle(
            labelStyle: const TextStyle(color: Colors.black),
            color: Colors.blue.shade50,
            brightness: Brightness.dark,
            showCheckmark: false,
          ),
          choiceActiveStyle: const C2ChoiceStyle(
            color: Colors.blue,
          ),
        ));
  }
}
