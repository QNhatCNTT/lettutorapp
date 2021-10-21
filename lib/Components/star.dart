import 'package:flutter/material.dart';

class StarVote extends StatelessWidget {
  const StarVote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: Row(
        children: const [
          Icon(
            Icons.star,
            color: Colors.yellow,
            size: 20,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
            size: 20,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
            size: 20,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
            size: 20,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
            size: 20,
          ),
        ],
      ),
    );
  }
}
