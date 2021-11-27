import 'dart:async';
import 'package:flutter/material.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({Key? key}) : super(key: key);

  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: EnterRoom(),
      ),
    );
  }
}

class EnterRoom extends StatefulWidget {
  const EnterRoom({Key? key}) : super(key: key);

  @override
  _EnterRoomState createState() => _EnterRoomState();
}

class _EnterRoomState extends State<EnterRoom> {
  Timer? t;
  DateTime startTime = DateTime(2021, 12, 5, 12);
  Duration remaining = DateTime.now().difference(DateTime.now());
  int hours = 0, minutes = 0, seconds = 0;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    t = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        remaining = -DateTime.now().difference(startTime);
        seconds = remaining.inSeconds;
        minutes = seconds >= 60 ? seconds ~/ 60 : 0;
        hours = minutes >= 60 ? minutes ~/ 60 : 0;
        minutes = minutes % 60;
        seconds = seconds % 60;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(remaining.inHours);
    final minutes = twoDigits(remaining.inMinutes.remainder(60));
    final seconds = twoDigits(remaining.inSeconds.remainder(60));
    return Stack(
      children: [
        Align(
          alignment: const Alignment(0, -0.4),
          child: Container(
            width: 300,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.black26, borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('Lesson will be started after',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ),
                Row(
                  children: [
                    const Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(hours,
                          style: const TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                    ),
                    const SizedBox(
                      child: Text(':',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(minutes,
                          style: const TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                    ),
                    const SizedBox(
                      child: Text(':',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(seconds,
                          style: const TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.chevron_left,
                size: 28,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
