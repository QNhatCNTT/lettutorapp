import 'package:flutter/material.dart';

class NotFoundData extends StatelessWidget {
  const NotFoundData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageURL = 'assets/images/no_data_found.png';
    return Container(
      padding: const EdgeInsets.all(20),
      child: const Center(
        child: Image(
          image: AssetImage(imageURL),
        ),
      ),
    );
  }
}
