import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomIconButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          // backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
            side: const BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              const Positioned(
                right: 0,
                child: Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
