import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/card_lesson_v2.dart';

class Topics extends StatefulWidget {
  const Topics({Key? key}) : super(key: key);

  @override
  _TopicsState createState() => _TopicsState();
}

class _TopicsState extends State<Topics> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Topic',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: const [
                CardLessonV2(id: '1', lesson: 'Phone Conversations'),
                SizedBox(height: 10),
                CardLessonV2(id: '2', lesson: 'Meetings'),
                SizedBox(height: 10),
                CardLessonV2(id: '3', lesson: 'Negotiations'),
                SizedBox(height: 10),
                CardLessonV2(id: '4', lesson: 'Complaints and Conflicts'),
                SizedBox(height: 10),
                CardLessonV2(id: '5', lesson: 'Job Interviews'),
                SizedBox(height: 10),
                CardLessonV2(id: '6', lesson: 'Scheduling and Time Management'),
                SizedBox(height: 10),
                CardLessonV2(id: '7', lesson: 'Presentations'),
                SizedBox(height: 10),
                CardLessonV2(id: '8', lesson: 'Work Styles'),
                SizedBox(height: 10),
                CardLessonV2(id: '9', lesson: 'Management and Leadership'),
                SizedBox(height: 10),
                CardLessonV2(id: '10', lesson: 'Sales'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
