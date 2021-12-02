import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);
  static const imageUrl = 'assets/images/notfound.jpg';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 300,
          padding: const EdgeInsets.all(20),
          child: const Center(
            child: Image(
              image: AssetImage(imageUrl),
            ),
          ),
        ),
      ),
    );
  }
}
