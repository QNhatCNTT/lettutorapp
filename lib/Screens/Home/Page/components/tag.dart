import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final String text;
  const Tag({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      margin: const EdgeInsets.fromLTRB(4, 0, 0, 0),
      child: Text(text),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
