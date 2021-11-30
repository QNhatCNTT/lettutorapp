import 'package:flutter/material.dart';
import 'package:lettutorapp/router.dart';

class CardSession extends StatelessWidget {
  const CardSession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadowColor: Colors.blue.shade200,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: const CircleAvatar(
                      maxRadius: 30,
                      backgroundImage: NetworkImage(
                          'https://thumbs.dreamstime.com/b/close-up-portrait-nice-person-bristle-show-finger-okey-sign-isolated-pink-color-background-203466939.jpg'),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Expanded(
                              flex: 1,
                              child: Text(
                                'April Corpuz',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.date_range_outlined,
                              size: 18,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text('06:30:00, 2021-10-6',
                                style: TextStyle(fontSize: 16)),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.schedule_outlined,
                              size: 18,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text('00:11:37', style: TextStyle(fontSize: 16)),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.star_border_outlined,
                              size: 18,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text('Not feedback yet',
                                style: TextStyle(fontSize: 16)),
                          ],
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
                    child: Container(
                      padding: const EdgeInsets.all(0),
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10)),
                              side: BorderSide(color: Colors.blue.shade200)),
                        ),
                        onPressed: () {},
                        child: const Text('Give Feedback',
                            style: TextStyle(fontSize: 16)),
                      ),
                    )),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(0),
                    height: 45,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(10)),
                              side: BorderSide(color: Colors.blue.shade200)),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(Routers.TeacherDetail);
                        },
                        child: const Text('See Tutor Details',
                            style:
                                TextStyle(fontSize: 16, color: Colors.blue))),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
