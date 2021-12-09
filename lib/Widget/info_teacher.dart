import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/tag.dart';
import 'package:lettutorapp/modles/tutor.dart';

class InfoTeacher extends StatefulWidget {
  final Tutor tutor;
  const InfoTeacher({Key? key, required this.tutor}) : super(key: key);

  @override
  _InfoTeacherState createState() => _InfoTeacherState();
}

class _InfoTeacherState extends State<InfoTeacher> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            widget.tutor.bio,
            style: const TextStyle(fontSize: 16),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Languages',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  padding: const EdgeInsets.all(10),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: widget.tutor.languages
                          .split(',')
                          .map((val) => Tag(text: val))
                          .toList()
                      // children: const [
                      //   Tag(text: 'English'),
                      //   Tag(text: 'Vietnamese'),
                      //   Tag(text: 'French'),
                      // ],
                      ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text(
                      'Education',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    widget.tutor.education,
                    style: const TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text(
                      'Interests',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    widget.tutor.interests,
                    style: const TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Experience',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    widget.tutor.experience,
                    style: const TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Profession',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    widget.tutor.profession,
                    style: const TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text(
                      'Specialties',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  padding: const EdgeInsets.all(10),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: widget.tutor.specialties
                          .split(',')
                          .map((val) => Tag(text: val))
                          .toList()
                      // children: const [
                      //   Tag(text: 'English for kids'),
                      //   Tag(text: 'Conversational'),
                      //   Tag(text: 'IELTS'),
                      // ],
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
