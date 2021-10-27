import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final int maxLines;
  final String label;
  final String text;
  final ValueChanged<String> onChanged;
  final TextInputType type;
  const CustomTextField({
    Key? key,
    this.maxLines = 1,
    required this.label,
    required this.text,
    required this.onChanged,
    required this.type,
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
            keyboardType: type,
            controller: TextEditingController(text: text),
            decoration: InputDecoration(
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
