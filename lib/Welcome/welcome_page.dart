import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/backgroundimage.dart';
import 'package:lettutorapp/Widget/loading.dart';
import '../router.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: WelcomeScreen(),
      ),
    );
  }
}

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
        children: [
          const Text('Welcome to back!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )),
          const Background(
            imageURL: 'assets/images/welcome.png',
          ),
          const SizedBox(
            height: 50,
          ),
          // ignore: sized_box_for_whitespace
          Container(
            width: 250,
            child: ElevatedButton(
              onPressed: () {
                LoadingDialog.showLoadingDialog(context, 'Loading...');
                Future.delayed(const Duration(milliseconds: 1000), () {
                  Navigator.of(context).popAndPushNamed(Routers.Login);
                });
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue.shade200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Get Started',
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                    ),
                    const Positioned(
                      right: 0,
                      child: Icon(
                        Icons.chevron_right,
                        color: Colors.black,
                        size: 34,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
