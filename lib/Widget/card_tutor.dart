import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/tag.dart';
import 'package:lettutorapp/router.dart';

class CardTutor extends StatelessWidget {
  const CardTutor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Card(
        shadowColor: Colors.grey[800],
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(Routers.TeacherDetail);
          },
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
                              backgroundImage:
                                  AssetImage('assets/images/avatar2.jpg'),
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
                                        Text(
                                          '5.00',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
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
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
