import 'package:flutter/material.dart';
import 'package:lettutorapp/Components/backgroundimage.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(
        top: 100,
      ),
      child: Column(
        children: const [
          Text('Welcome to back!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )),
          Background(
            imageURL: 'assets/images/welcome.png',
          ),
        ],
      ),
    );
  }
}
