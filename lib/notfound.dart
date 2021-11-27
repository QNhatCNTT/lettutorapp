import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);
  static const imageUrl =
      'https://bizflyportal.mediacdn.vn/bizflyportal/459/347/2020/06/02/17/37/70515910726734841.jpg';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 300,
          padding: const EdgeInsets.all(20),
          child: const Center(
            child: Image(
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
      ),
    );
  }
}
