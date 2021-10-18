import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final String imageURL;
  const Background({Key? key, this.imageURL = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 50,
        bottom: 30,
      ),
      alignment: Alignment.center,
      child: Image.asset(imageURL),
    );
  }
}
