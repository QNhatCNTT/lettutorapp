import 'package:flutter/material.dart';

class LoginWith extends StatelessWidget {
  const LoginWith({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/facebook.png'),
            iconSize: 40,
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/google.png'),
            iconSize: 40,
          ),
        ],
      ),
    );
  }
}
