import 'package:flutter/material.dart';

class CardUpcoming extends StatefulWidget {
  const CardUpcoming({Key? key}) : super(key: key);

  @override
  _CardUpcomingState createState() => _CardUpcomingState();
}

class _CardUpcomingState extends State<CardUpcoming> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Card(
        elevation: 3,
        shadowColor: Colors.grey,
        child: Column(
          children: [
            Row(
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
                          Text(
                            'April Corpuz',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          const Expanded(
                            flex: 1,
                            child: Text('2021-10-6',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: const EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[100],
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                        color: Colors.grey.shade400,
                                        style: BorderStyle.solid,
                                      )),
                                  child: const Text('06:30'),
                                ),
                                const Text(' - ',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: const EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      color: Colors.red[100],
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                        color: Colors.grey.shade400,
                                        style: BorderStyle.solid,
                                      )),
                                  child: const Text('06:55'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
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
                          primary: Colors.white,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8)),
                              side: BorderSide(color: Colors.grey)),
                        ),
                        onPressed: () {},
                        child: const Text('Canter',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black)),
                      ),
                    )),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(0),
                    height: 45,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.only(topRight: Radius.circular(8)),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('Go to Meeting',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white))),
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
