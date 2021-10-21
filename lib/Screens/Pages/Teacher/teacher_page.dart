import 'package:flutter/material.dart';
import 'components/info_teacher.dart';
import 'components/intro_teacher.dart';

class TeacherPage extends StatefulWidget {
  const TeacherPage({Key? key}) : super(key: key);

  @override
  _TeacherPageState createState() => _TeacherPageState();
}

class _TeacherPageState extends State<TeacherPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(0),
              width: double.infinity,
              height: 200,
              child:
                  const Image(image: AssetImage('assets/images/welcome.png'))),
          const IntroTeacher(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                )),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 15,
                ),
                child: Text(
                  'Booking',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0, primary: Colors.grey.shade50),
                    onPressed: () {},
                    child: Column(
                      children: const [
                        Icon(Icons.message, color: Colors.blue),
                        SizedBox(
                          height: 8,
                        ),
                        Text('Message', style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0, primary: Colors.grey.shade50),
                    onPressed: () => showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text(
                            'Report Teacher',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          content: Container(
                            padding: const EdgeInsets.all(0),
                            width: 400,
                            child: const TextField(
                              maxLines: 5,
                              maxLength: 100,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Content',
                              ),
                            ),
                          ),
                          actions: [
                            TextButton(
                              child: const Text('Report'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            TextButton(
                              child: const Text('Cancel'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    ),
                    child: Column(
                      children: const [
                        Icon(Icons.report, color: Colors.blue),
                        SizedBox(
                          height: 8,
                        ),
                        Text('Report', style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const InfoTeacher(),
        ],
      ),
    );
  }
}
