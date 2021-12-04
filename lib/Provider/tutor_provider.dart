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

  void changeFilter(String value) {
    selectedTag = value;
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

  String selectedTag = 'All';

  List<Tutor> get listFavoriteTutor {
    sortFavoriteTutor();
    if (keyword.isEmpty && selectedTag == 'All') {
      return _tutors;
    } else if (keyword.isNotEmpty) {
      return _tutors
          .where((tutor) =>
              tutor.name.toLowerCase().contains(keyword.toLowerCase()))
          .toList();
    } else if (selectedTag != 'All') {
      return _tutors
          .where((tutor) => tutor.specialties
              .toLowerCase()
              .split(',')
              .contains(selectedTag.toLowerCase()))
          .toList();
    }
    return _tutors;
  }

  void sortFavoriteTutor() {
    _tutors
        .sort((Tutor t1, Tutor t2) => t2.isFavorite.compareTo(t1.isFavorite));
  }
}
