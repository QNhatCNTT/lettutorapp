import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/favorite_icon.dart';
import 'package:lettutorapp/Widget/star.dart';

class IntroTeacher extends StatefulWidget {
  const IntroTeacher({Key? key}) : super(key: key);

  @override
  _IntroTeacherState createState() => _IntroTeacherState();
}

class _IntroTeacherState extends State<IntroTeacher> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          const Expanded(
            flex: 1,
            child: CircleAvatar(
              maxRadius: 45,
              backgroundImage: NetworkImage(
                  'https://www.incimages.com/uploaded_files/image/1920x1080/getty_481292845_77896.jpg'),
            ),
          ),
          const SizedBox(
            width: 7,
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Text(
                          'Ralf Bippert',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [StarVote()],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Text(
                        'Teacher',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [FavoriteVote()],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text('South Africa',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
