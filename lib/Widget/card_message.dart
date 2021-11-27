import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/avt_message.dart';

class CardMessage extends StatelessWidget {
  const CardMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.grey.shade50,
          elevation: 0,
        ),
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              const AvtMessage(
                imageUrl:
                    'https://thumbs.dreamstime.com/b/close-up-portrait-nice-person-bristle-show-finger-okey-sign-isolated-pink-color-background-203466939.jpg',
                color: Colors.red,
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(10, 2, 5, 2),
                      child: const Text('April Corpuz',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(10, 2, 5, 2),
                      child: const Text(
                        'See you on Wednesday. Goodnight, See you again on Wednesday.',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 38,
                  alignment: Alignment.bottomRight,
                  child: const Text(
                    '04-10-21 11:12 PM',
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
