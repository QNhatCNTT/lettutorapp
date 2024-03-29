import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String title;
  final Alignment alignment;
  final VoidCallback onPressed;
  const CustomTextButton({
    Key? key,
    this.title = '',
    this.alignment = Alignment.center,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
