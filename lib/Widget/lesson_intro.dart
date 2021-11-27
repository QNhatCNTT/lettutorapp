import 'package:flutter/material.dart';
import 'package:lettutorapp/router.dart';

class LessonIntro extends StatelessWidget {
  const LessonIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.blue[700]),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Total lesson time is 11 hours 46 minutes',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Upcoming Lesson',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Wed, 06 Oct 21 06:30 - 06:55',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Routers.RoomMeeting);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              )),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Text(
                'Enter lesson room',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
