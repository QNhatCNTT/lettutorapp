import 'package:flutter/material.dart';
import 'package:lettutorapp/modles/tutor.dart';
import 'package:lettutorapp/utils/tutor_data.dart';

class TutorProvider with ChangeNotifier {
  final List<Tutor> _tutors = [
    TutorData.tutorData1,
    TutorData.tutorData2,
    TutorData.tutorData3,
  ];
  String keyword = '';
  void changeSearch(String value) {
    keyword = value;
    notifyListeners();
  }

  List<Tutor> get getTutor {
    if (keyword.isEmpty) {
      return _tutors;
    } else {
      return _tutors
          .where((tutor) =>
              tutor.name.toLowerCase().contains(keyword.toLowerCase()))
          .toList();
    }
  }

  List<Tutor> get listFavoriteTutor =>
      _tutors.where((tutor) => tutor.isFavorite == true).toList();
}
