import 'package:flutter/material.dart';

class FilterTag extends StatefulWidget {
  final String chipName;
  const FilterTag({Key? key, this.chipName = ''}) : super(key: key);

  @override
  _FilterChipState createState() => _FilterChipState();
}

class _FilterChipState extends State<FilterTag> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(widget.chipName),
      labelStyle: const TextStyle(color: Colors.black, fontSize: 16.0),
      selected: _isSelected,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      backgroundColor: Colors.blue[50],
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: Colors.blue[600],
    );
  }
}
