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
    List<String> _date = [];
    for (int i = 0; i < 5; i++) {
      var b = DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day + i);
      String c = '${b.year}-${b.month}-${b.day}';
      _date.add(c.toString());
    }
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
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                height: 10,
              ),
              itemCount: _date.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CustomButton(
                      onPressed: () {
                        _showTimeSheet(context);
                        print(_date[index]);
                      },
                      title: _date[index]),
                );
              },
            ),
          ),
          // Expanded(
          //   child: ListView(
          //     padding: const EdgeInsets.symmetric(horizontal: 10),
          //     children: <Widget>[
          //       Padding(
          //         padding: const EdgeInsets.symmetric(vertical: 10),
          //         child: CustomButton(
          //           onPressed: () {
          //             _showTimeSheet(context);
          //           },
          //           title: '2021-11-29',
          //         ),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.symmetric(vertical: 10),
          //         child: CustomButton(
          //           onPressed: () {
          //             _showTimeSheet(context);
          //           },
          //           title: '2021-11-30',
          //         ),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.symmetric(vertical: 10),
          //         child: CustomButton(
          //           onPressed: () {
          //             _showTimeSheet(context);
          //           },
          //           title: '2021-12-01',
          //         ),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.symmetric(vertical: 10),
          //         child: CustomButton(
          //           onPressed: () {
          //             _showTimeSheet(context);
          //           },
          //           title: '2021-12-02',
          //         ),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.symmetric(vertical: 10),
          //         child: CustomButton(
          //           onPressed: () {
          //             _showTimeSheet(context);
          //           },
          //           title: '2021-12-03',
          //         ),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.symmetric(vertical: 10),
          //         child: CustomButton(
          //           onPressed: () {
          //             _showTimeSheet(context);
          //           },
          //           title: '2021-12-04',
          //         ),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.symmetric(vertical: 10),
          //         child: CustomButton(
          //           onPressed: () {
          //             _showTimeSheet(context);
          //           },
          //           title: '2021-12-05',
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
