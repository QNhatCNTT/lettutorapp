import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/tag.dart';
import 'package:lettutorapp/modles/tutor.dart';
// import 'package:lettutorapp/router.dart';

// ignore: must_be_immutable
class CardTutor extends StatelessWidget {
  final Tutor tutor;
  int index;
  final GestureTapCallback? ontap;
  CardTutor(
      {Key? key, required this.index, required this.tutor, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = tutor.languages.split(',');
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Card(
        shadowColor: Colors.grey[800],
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: InkWell(
          onTap: ontap,
          // onTap: () {
          //   Navigator.of(context).pushNamed(Routers.TeacherDetail);
          // },
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
                              backgroundImage: AssetImage(tutor.avatar),
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
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      tutor.name,
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
                                        Text(
                                          tutor.rating.toString(),
                                          style: const TextStyle(
                                            color: Colors.red,
                                            fontSize: 16,
                                          ),
                                        ),
                                        const Icon(
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
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.all(0),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: list
                                        .map((value) => Tag(
                                              text: value,
                                            ))
                                        .toList(),
                                    // children: const [
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
                      tutor.bio,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      maxLines: 4,
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
