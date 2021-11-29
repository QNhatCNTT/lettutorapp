import 'package:flutter/material.dart';
import 'package:lettutorapp/router.dart';

class TutorTab extends StatelessWidget {
  const TutorTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue.shade50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.of(context).popAndPushNamed(Routers.TeacherDetail);
              },
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                    child: CircleAvatar(
                      maxRadius: 30,
                      backgroundImage: NetworkImage(
                          'https://www.incimages.com/uploaded_files/image/1920x1080/getty_481292845_77896.jpg'),
                    ),
                  ),
                  Text('April Corpuz',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
