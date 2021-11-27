import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/feedback_card.dart';

class FeedbackListPage extends StatelessWidget {
  const FeedbackListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          title: const Text(
            'Feedback List',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: const SafeArea(child: FeedbackList()),
      ),
    );
  }
}

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
