// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:lettutorapp/TeacherDetail/pick_time.dart';
import 'package:lettutorapp/Widget/button.dart';

class PickDate extends StatelessWidget {
  const PickDate({Key? key}) : super(key: key);

  void _showTimeSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        builder: (context) {
          return const PickTime();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Pick your date!',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
          const Divider(thickness: 1, height: 1),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CustomButton(
                    onPressed: () {
                      _showTimeSheet(context);
                    },
                    title: '2021-11-29',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CustomButton(
                    onPressed: () {
                      _showTimeSheet(context);
                    },
                    title: '2021-11-30',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CustomButton(
                    onPressed: () {
                      _showTimeSheet(context);
                    },
                    title: '2021-12-01',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CustomButton(
                    onPressed: () {
                      _showTimeSheet(context);
                    },
                    title: '2021-12-02',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CustomButton(
                    onPressed: () {
                      _showTimeSheet(context);
                    },
                    title: '2021-12-03',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CustomButton(
                    onPressed: () {
                      _showTimeSheet(context);
                    },
                    title: '2021-12-04',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CustomButton(
                    onPressed: () {
                      _showTimeSheet(context);
                    },
                    title: '2021-12-05',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
