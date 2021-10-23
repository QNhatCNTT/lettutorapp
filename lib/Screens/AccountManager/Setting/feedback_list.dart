import 'package:flutter/material.dart';
import 'package:lettutorapp/Screens/AccountManager/Setting/component/feedback_card.dart';

class FeedbackList extends StatelessWidget {
  const FeedbackList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('5.0',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.red,
                            fontWeight: FontWeight.bold)),
                    Icon(
                      Icons.star,
                      color: Colors.yellow.shade400,
                      size: 32,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const FeedbackCard(),
        const FeedbackCard(),
        const FeedbackCard(),
        const FeedbackCard(),
        const FeedbackCard(),
      ],
    );
  }
}
