import 'package:flutter/material.dart';

class FeedbackCard extends StatelessWidget {
  const FeedbackCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Card(
        elevation: 6,
        color: Colors.lightBlue.shade50,
        shadowColor: Colors.grey.shade700,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: CircleAvatar(
                      maxRadius: 30,
                      backgroundImage: AssetImage(
                        'assets/images/avatar3.jpg',
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.all(0),
                          child: const Text('April Corpuz',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                          child: Row(
                            children: [
                              const Expanded(
                                flex: 2,
                                child: Text('22:02:21, 10/09/2021',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.red)),
                              ),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text('5.0',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.red)),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow.shade400,
                                      size: 20,
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
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    offset: const Offset(0.0, 0.5), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
                border: Border.all(
                  color: Colors.grey.shade200,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Happy to teach Hari, I will focus a lot on business-related English and support his growth. he has a fast grip on new materials and uses them well.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
