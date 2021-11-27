import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/textbutton.dart';

class LoginWith extends StatelessWidget {
  final String text;
  final String title;
  final VoidCallback onPressed;
  const LoginWith({
    Key? key,
    this.text = '',
    this.title = '',
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                children: const [
                  Text('Or',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Continue with',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/facebook.png'),
                  iconSize: 40,
                ),
                const SizedBox(
                  width: 15,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/google.png'),
                  iconSize: 40,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(text,
                    style: const TextStyle(
                      fontSize: 18,
                    )),
                CustomTextButton(
                  title: title,
                  onPressed: onPressed,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ));
  }
}
