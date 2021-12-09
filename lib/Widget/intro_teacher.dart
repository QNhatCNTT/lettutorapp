import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/favorite_icon.dart';
import 'package:lettutorapp/Widget/star.dart';
import 'package:lettutorapp/modles/tutor.dart';

class IntroTeacher extends StatefulWidget {
  final Tutor tutor;
  const IntroTeacher({Key? key, required this.tutor}) : super(key: key);

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
          Expanded(
            flex: 1,
            child: CircleAvatar(
              maxRadius: 45,
              backgroundImage: AssetImage(widget.tutor.avatar),
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
                      Expanded(
                        flex: 1,
                        child: Text(
                          widget.tutor.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            StarVote(
                              rating: widget.tutor.rating,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: widget.tutor.isTeacher == 1
                          ? const Text(
                              'Teacher',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            )
                          : const Text(''),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FavoriteVote(
                            isFavorite: widget.tutor.isFavorite,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(widget.tutor.country,
                            style: const TextStyle(
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
