// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/field_text.dart';
import 'package:lettutorapp/Widget/topics.dart';

class TopicTab extends StatelessWidget {
  const TopicTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // padding: const EdgeInsets.fromLTRB(10, 20, 10, 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FieldText(
            title: 'About Course',
            label: 'The English you need for your work and career',
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Overview',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.info_outlined,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      'Why should you learn this course?',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Understanding business culture and customs is just as important as learning traditional business-related vocabulary. With Cambly\'s Business English course, you have the chance to learn from expertly-crafted lessons as well as from your tutor\'s personal experiences.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.info_outlined,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      'What will you be able to do?',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'This course covers the most common vocabulary and grammatical structures needed to bo business in English. The course focuses on simulating real-life business situations to build professional communicative competency. You will also learn idioms being used in English-speaking offices across the globe.',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          const FieldText(
            title: 'Level',
            label: '4',
          ),
          const SizedBox(
            height: 10,
          ),
          const Topics(),
        ],
      ),
    );
  }
}
