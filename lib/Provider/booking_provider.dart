import 'package:flutter/material.dart';
import 'package:lettutorapp/modles/date_booking.dart';
import 'package:lettutorapp/modles/time_booking.dart';
import 'package:lettutorapp/utils/time_booking_data.dart';

class BookingProvider with ChangeNotifier {
  final List<TimeBooking> _listBooking = [
    TimeData.TimeData1,
    TimeData.TimeData2,
    TimeData.TimeData3,
    TimeData.TimeData4,
    TimeData.TimeData5,
    TimeData.TimeData6,
  ];

  List<TimeBooking> get getListBooking => _listBooking;

  void addBooking(TimeBooking booking) {
    _listBooking.add(booking);
    notifyListeners();
  }

  void removeBooking(TimeBooking booking) {
    _listBooking.remove(booking);
    notifyListeners();
  }
}
