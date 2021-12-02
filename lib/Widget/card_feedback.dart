import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/star.dart';

class CardFeedback extends StatefulWidget {
  const CardFeedback({Key? key}) : super(key: key);

  @override
  _CardFeedbackState createState() => _CardFeedbackState();
}

class _CardFeedbackState extends State<CardFeedback> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey[600],
      elevation: 3,
      child: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: CircleAvatar(
                  maxRadius: 25,
                  backgroundImage: AssetImage('assets/images/avatar2.jpg'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                'Nguyễn Minh Triết',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                            ],
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [StarVote()],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: const EdgeInsets.all(0),
                        child: const Text(
                          'She is great. She is a good teacher. She is beautiful girl.',
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text('07:56:44, 19/10/2021'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
