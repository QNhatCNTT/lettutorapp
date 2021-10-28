// @dart=2.9

import 'package:flutter/material.dart';
import 'component/tagline.dart';

class VideoIntroduction extends StatefulWidget {
  const VideoIntroduction({Key key}) : super(key: key);

  @override
  _VideoIntroductionState createState() => _VideoIntroductionState();
}

class _VideoIntroductionState extends State<VideoIntroduction> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            const Text(
              'Introduce yourself',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const TagLine(name: 'Introduction video'),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'A few helpful tips:',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    '1. Find a clean and quiet space',
                    style: TextStyle(fontSize: 15.5),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    '2. Smile and look at the camera',
                    style: TextStyle(fontSize: 15.5),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    '3. Dress smart',
                    style: TextStyle(fontSize: 15.5),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    '4. Speak for 1-3 minutes',
                    style: TextStyle(fontSize: 15.5),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    '5. Brand yourself and have fun!',
                    style: TextStyle(fontSize: 15.5),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(0),
              child: ElevatedButton(
                child: const Text('Choose video',
                    style: TextStyle(color: Colors.blue, fontSize: 16)),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.only(
                      left: 40, right: 40, top: 10, bottom: 10),
                  primary: Colors.grey.shade50,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  side: const BorderSide(color: Colors.blue),
                ),
              ),
            ),
            Container(
              height: 300,
              width: double.infinity,
              padding: const EdgeInsets.only(top: 20),
              child: const Image(
                image: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
