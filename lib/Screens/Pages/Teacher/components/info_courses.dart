import 'package:flutter/material.dart';

class InfoCourses extends StatefulWidget {
  const InfoCourses({Key? key}) : super(key: key);

  @override
  _InfoCoursesState createState() => _InfoCoursesState();
}

class _InfoCoursesState extends State<InfoCourses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Courses',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Card(
              child: Column(
                children: [
                  const Image(
                      image: NetworkImage(
                          'https://images.indianexpress.com/2020/04/online759.jpg')),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                    ),
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text('Business English',
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                    'The English you need for your work and career',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey[900],
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: const [
                                  Icon(Icons.vertical_align_top),
                                  Text('4',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16))
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    elevation: 0, primary: Colors.blue[50]),
                                onPressed: () {},
                                child: const Text('Explore',
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 18)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
