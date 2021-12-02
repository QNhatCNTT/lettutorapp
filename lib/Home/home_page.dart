import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/card_lesson_v1.dart';
import 'package:lettutorapp/Widget/lesson_intro.dart';
import 'package:lettutorapp/Widget/navigation_bar.dart';
import 'package:lettutorapp/router.dart';
import 'package:lettutorapp/utils/user_info.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const user = UserInfo.myUser;
  // late int index;
  @override
  void initState() {
    super.initState();
    // index = 0;
  }

  @override
  Widget build(BuildContext context) {
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
                  backgroundImage: NetworkImage(user.imagePath),
                ),
              ),
            )
          ],
        ),
        body: ListView(children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const LessonIntro(),
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
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('Recommended Tutors',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )),
                          Divider(
                            height: 5,
                            thickness: 3,
                            endIndent: 33,
                            color: Colors.grey[700],
                          ),
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
              const CardLessonV1(),
              const CardLessonV1(),
              const CardLessonV1(),
              const CardLessonV1(),
              const CardLessonV1(),
              const CardLessonV1(),
              const CardLessonV1(),
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
