import 'package:flutter/material.dart';

class AvtMessage extends StatelessWidget {
  final String imageUrl;
  final Color color;
  const AvtMessage({
    Key? key,
    required this.imageUrl,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          height: 60,
          width: 60,
          // decoration: const BoxDecoration(color: Colors.blue),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              imageUrl,
            ),
          ),
        ),
        ClipOval(
          child: Container(
            height: 19,
            width: 19,
            margin: const EdgeInsets.all(0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.white),
            child: Container(
              margin: const EdgeInsets.all(2),
              height: 17,
              width: 17,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: color),
            ),
          ),
        ),
      ],
    );
  }
}
