// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:lettutorapp/router.dart';

class PickTime extends StatelessWidget {
  const PickTime({Key? key}) : super(key: key);
  void _showConfirm(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.grey.shade50,
              title: const Center(
                child: Text(
                  'Confirm',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              content: const Text(
                'Want to book this tutor?',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              actionsAlignment: MainAxisAlignment.center,
              actions: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.35,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: const BorderSide(color: Colors.blue),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text('Cancel',
                          style: TextStyle(fontSize: 20, color: Colors.blue)),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.35,
                  child: ElevatedButton(
                    onPressed: () =>
                        Navigator.of(context).popAndPushNamed(Routers.Upcoming),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text('Accept',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.4;
    return Container(
      height: double.infinity,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text(
              'Pick your time!',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
          const Divider(thickness: 1, height: 1),
          Expanded(
            child: ListView(children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Wrap(
                    verticalDirection: VerticalDirection.down,
                    runSpacing: 20.0,
                    spacing: 20.0,
                    children: <Widget>[
                      Container(
                        width: width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: null,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text('Reserved',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.grey.shade50)),
                          ),
                        ),
                      ),
                      Container(
                        width: width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: null,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text('Reserved',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.grey.shade50)),
                          ),
                        ),
                      ),
                      Container(
                        width: width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            side: const BorderSide(color: Colors.blue),
                          ),
                          onPressed: () {
                            _showConfirm(context);
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text('11:00 - 11:25',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.blue)),
                          ),
                        ),
                      ),
                      Container(
                        width: width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            side: const BorderSide(color: Colors.blue),
                          ),
                          onPressed: () {
                            _showConfirm(context);
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text('11:35 - 12:00',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.blue)),
                          ),
                        ),
                      ),
                      Container(
                        width: width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            side: const BorderSide(color: Colors.blue),
                          ),
                          onPressed: () {
                            _showConfirm(context);
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text('13:00 - 13:25',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.blue)),
                          ),
                        ),
                      ),
                      Container(
                        width: width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            side: const BorderSide(color: Colors.blue),
                          ),
                          onPressed: () {
                            _showConfirm(context);
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text('13:35 - 14:00',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.blue)),
                          ),
                        ),
                      ),
                      Container(
                        width: width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            side: const BorderSide(color: Colors.blue),
                          ),
                          onPressed: () {
                            _showConfirm(context);
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text('14:00 - 14:25',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.blue)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
