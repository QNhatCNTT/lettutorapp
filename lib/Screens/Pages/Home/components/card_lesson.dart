import 'package:flutter/material.dart';
import 'package:lettutorapp/Components/favorite_icon.dart';
import 'package:lettutorapp/Components/star.dart';
import 'tag.dart';

class CardLesson extends StatefulWidget {
  const CardLesson({Key? key}) : super(key: key);

  @override
  _CardLessonState createState() => _CardLessonState();
}

class _CardLessonState extends State<CardLesson> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Card(
        shadowColor: Colors.grey[800],
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: InkWell(
          onTap: () {},
          child: Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://www.incimages.com/uploaded_files/image/1920x1080/getty_481292845_77896.jpg'),
                              maxRadius: 40,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Expanded(
                                    flex: 3,
                                    child: Text(
                                      'Keegan',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: const [
                                        FavoriteVote(),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const StarVote(),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: const EdgeInsets.all(0),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: const [
                                      Tag(text: 'English'),
                                      Tag(text: 'English for kid'),
                                      Tag(text: 'TOEIC'),
                                      Tag(text: 'TOEFL'),
                                      Tag(text: 'English for bussiness'),
                                      Tag(text: 'tagalog'),
                                      Tag(text: 'KID'),
                                      Tag(text: 'Korea'),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: const Text(
                      'I am passionate about running and fitness, I often compete in trail/mountain running events and I love pushing myself. I am training to one day take part in ultra-endurance events. I also enjoy watching rugby on the weekends, reading and watching',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      maxLines: 3,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
