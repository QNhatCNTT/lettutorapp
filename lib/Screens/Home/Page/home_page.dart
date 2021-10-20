import 'package:flutter/material.dart';
import 'components/card_lesson.dart';
import 'components/lesson_intro.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const LessonIntro(),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('Recommended Tutors',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          )),
                      Divider(
                        height: 5,
                        thickness: 3,
                        endIndent: 43,
                        color: Colors.grey[700],
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Text('See all', style: TextStyle(fontSize: 15)),
                            Icon(
                              Icons.chevron_right,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const CardLesson(),
          const CardLesson(),
          const CardLesson(),
          const CardLesson(),
          const CardLesson(),
          const CardLesson(),
          const CardLesson(),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
