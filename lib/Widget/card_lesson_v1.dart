import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/favorite_icon.dart';
import 'package:lettutorapp/Widget/star.dart';
import 'package:lettutorapp/modles/tutor.dart';
import 'package:lettutorapp/router.dart';
import 'tag.dart';

// ignore: must_be_immutable
class CardLessonV1 extends StatefulWidget {
  final Tutor tutor;
  int index;
  CardLessonV1(this.index, this.tutor, {Key? key}) : super(key: key);

  @override
  _CardLessonV1State createState() => _CardLessonV1State();
}

class _CardLessonV1State extends State<CardLessonV1> {
  @override
  void initState() {
    widget.tutor.isFavorite;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final list = widget.tutor.specialties.split(',');
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                            child: CircleAvatar(
                              backgroundImage: AssetImage(widget.tutor.avatar),
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
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      widget.tutor.name,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        FavoriteVote(
                                          isFavorite: widget.tutor.isFavorite,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              StarVote(
                                rating: widget.tutor.rating,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: const EdgeInsets.all(0),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                      children: list
                                          .map((value) => Tag(
                                                text: value,
                                              ))
                                          .toList()
                                      // children: [
                                      //   Tag(text: 'English'),
                                      //   Tag(text: 'English for kid'),
                                      //   Tag(text: 'TOEIC'),
                                      //   Tag(text: 'TOEFL'),
                                      //   Tag(text: 'English for bussiness'),
                                      //   Tag(text: 'tagalog'),
                                      //   Tag(text: 'KID'),
                                      //   Tag(text: 'Korea'),
                                      // ],
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
                    child: Text(
                      widget.tutor.bio,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      maxLines: 4,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
