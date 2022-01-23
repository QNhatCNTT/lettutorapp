import 'package:flutter/material.dart';
import 'package:lettutorapp/Provider/tutor_provider.dart';
import 'package:lettutorapp/Widget/card_lesson_v1.dart';
import 'package:lettutorapp/Widget/lesson_intro.dart';
import 'package:lettutorapp/Widget/navigation_bar.dart';
import 'package:lettutorapp/Widget/no_data.dart';
import 'package:lettutorapp/Widget/no_lesson.dart';
import 'package:lettutorapp/router.dart';
import 'package:lettutorapp/utils/user_info.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const user = UserInfo.myUser;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> booking = ['yes'];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: const Text(
            'Home',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Container(
              padding: const EdgeInsets.only(right: 15),
              child: IconButton(
                iconSize: 35,
                onPressed: () {
                  Navigator.of(context).pushNamed(Routers.Profile);
                },
                icon: CircleAvatar(
                  backgroundImage: AssetImage(user.imagePath),
                ),
              ),
            )
          ],
        ),
        body: ListView(physics: const ScrollPhysics(), children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              booking.isEmpty ? const NoLesson() : const LessonIntro(),
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
                        children: const [
                          SizedBox(
                            height: 5,
                          ),
                          Text('Recommended Tutors',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              )),
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
                            onPressed: () {
                              Navigator.of(context)
                                  .popAndPushNamed(Routers.Tutors);
                            },
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
              Consumer<TutorProvider>(
                  builder: (context, TutorProvider data, child) {
                return data.getTutor.isEmpty
                    ? const NotFoundData()
                    : SizedBox(
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: data.getTutor.length,
                          itemBuilder: (context, index) {
                            return CardLessonV1(
                              index: index,
                              tutor: data.getTutor[index],
                              ontap: () {
                                Navigator.of(context).pushNamed(
                                    Routers.TeacherDetail,
                                    arguments: data.getTutor[index]);
                              },
                            );
                          },
                        ),
                      );
              }),
              // const CardLessonV1(),
              // const CardLessonV1(),
              // const CardLessonV1(),
              // const CardLessonV1(),
              // const CardLessonV1(),
              // const CardLessonV1(),
              // const CardLessonV1(),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ]),
        bottomNavigationBar: const NaviBotBar(
          selectedIndex: 0,
        ),
      ),
    );
  }
}
