// @dart=2.9

import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class WTLearn extends StatefulWidget {
  const WTLearn({Key key}) : super(key: key);

  @override
  _WTLearnState createState() => _WTLearnState();
}

class _WTLearnState extends State<WTLearn> {
  static List<Learn> learn = [
    Learn('English for kids', '1'),
    Learn('English for Business', '2'),
    Learn('Conversational', '3'),
    Learn('STARTERS', '4'),
    Learn('MOVERS', '5'),
    Learn('FLYERS', '6'),
    Learn('KET', '7'),
    Learn('PET', '8'),
    Learn('IELST', '9'),
    Learn('TOEFL', '10'),
    Learn('TOEIC', '11'),
  ];
  static List<Learn> _selectLearn = [];
  final _multiSelectKey = GlobalKey<FormFieldState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Want To Learn',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: MultiSelectBottomSheetField<Learn>(
                    key: _multiSelectKey,
                    initialChildSize: 0.7,
                    maxChildSize: 0.95,
                    searchable: true,
                    items: learn
                        .map((learn) => MultiSelectItem(
                              learn,
                              learn.name,
                            ))
                        .toList(),
                    validator: (values) {
                      if (values == null || values.isEmpty) {
                        return "Required";
                      }

                      return null;
                    },
                    listType: MultiSelectListType.CHIP,
                    buttonText: const Text(
                      'Select Learn',
                      style: TextStyle(fontSize: 15.5),
                    ),
                    onConfirm: (values) {
                      setState(() {
                        _selectLearn = values;
                      });
                      _multiSelectKey.currentState.validate();
                    },
                    chipDisplay: MultiSelectChipDisplay(
                      textStyle: const TextStyle(color: Colors.black),
                      scroll: true,
                      onTap: (item) {
                        setState(() {
                          _selectLearn.remove(item);
                        });
                        _multiSelectKey.currentState.validate();
                      },
                    ),
                    itemsTextStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 15.5,
                    ),
                    buttonIcon: const Icon(
                      Icons.keyboard_arrow_down,
                      size: 26,
                    ),
                    title: const Text('Selected Learn',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                ),
                _selectLearn == null || _selectLearn.isEmpty
                    ? Container(
                        padding: const EdgeInsets.all(10),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "None selected",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 15.5),
                        ))
                    : Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Learn {
  final String name;
  final String id;
  Learn(this.name, this.id);
}
