import 'package:flutter/material.dart';

class CardLessonV2 extends StatelessWidget {
  final String id;
  final String lesson;
  const CardLessonV2({Key? key, this.id = '', this.lesson = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10),
        elevation: 2,
        primary: Colors.white,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
        ),
      ),
      onPressed: () {
        //topic
      },
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                height: 70,
                width: 70,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.deepPurple[200],
                    borderRadius: BorderRadius.circular(14)),
                child: Text(id,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w900)),
              )),
          Expanded(
            flex: 3,
            child: Text(
              lesson,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
