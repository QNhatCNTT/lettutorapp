import 'package:flutter/material.dart';

import 'tag.dart';

class CardLesson extends StatelessWidget {
  const CardLesson({Key? key}) : super(key: key);

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
                              maxRadius: 30,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Expanded(
                                    flex: 4,
                                    child: Text(
                                      'Keegan',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: InkWell(
                                      onTap: () {},
                                      child: const Icon(
                                        Icons.favorite_border,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(0),
                                child: Row(
                                  children: const [
                                    Tag(text: 'English'),
                                    Tag(text: 'English for kid'),
                                    Tag(text: 'TOEIC'),
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
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: const Text(
                      'I am passionate about running and fitness, I often compete in trail/mountain running events and I love pushing myself. I am training to one day take part in ultra-endurance events. I also enjoy watching rugby on the weekends, reading and watching',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      maxLines: 3,
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
