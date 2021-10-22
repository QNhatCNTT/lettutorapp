import 'package:flutter/material.dart';

class TabsButton extends StatefulWidget {
  const TabsButton({Key? key}) : super(key: key);

  @override
  _TabsButtonState createState() => _TabsButtonState();
}

class _TabsButtonState extends State<TabsButton> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 180,
      left: 70,
      child: Align(
        alignment: const Alignment(0, -0.36),
        child: Container(
          height: 100,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 2.0,
                spreadRadius: 0.0,
                offset: Offset(2.0, 2.0),
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0, primary: Colors.white),
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '10',
                          style: TextStyle(color: Colors.black, fontSize: 23),
                        ),
                        Text(
                          'topics',
                          style: TextStyle(color: Colors.black, fontSize: 23),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0, primary: Colors.white),
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '1',
                          style: TextStyle(color: Colors.black, fontSize: 23),
                        ),
                        Text(
                          'tutors',
                          style: TextStyle(color: Colors.black, fontSize: 23),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
