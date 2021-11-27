import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/card_feedback.dart';

class Feedbacks extends StatefulWidget {
  const Feedbacks({Key? key}) : super(key: key);

  @override
  _FeedbacksState createState() => _FeedbacksState();
}

class _FeedbacksState extends State<Feedbacks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Rating and Comment (3)',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: const [
                CardFeedback(),
                CardFeedback(),
                CardFeedback(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
