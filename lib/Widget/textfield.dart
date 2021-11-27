// @dart=2.9
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final int maxLines;
  final String label;
  final String text;
  final String hint;
  final ValueChanged<String> onChanged;
  final TextInputType type;
  const CustomTextField({
    Key key,
    this.maxLines = 1,
    this.label,
    this.text,
    this.onChanged,
    this.type,
    this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 10),
          TextFormField(
            style: const TextStyle(overflow: TextOverflow.clip),
            keyboardType: type,
            controller: TextEditingController(text: text),
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: const TextStyle(overflow: TextOverflow.ellipsis),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            maxLines: maxLines,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
