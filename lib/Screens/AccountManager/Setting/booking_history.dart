import 'package:flutter/material.dart';
import 'package:lettutorapp/Screens/AccountManager/Setting/component/booking_history_card.dart';

class BookingHistory extends StatelessWidget {
  const BookingHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 10),
      children: const [
        CardBooking(),
        CardBooking(),
        CardBooking(),
        CardBooking(),
        CardBooking(),
        CardBooking(),
        CardBooking()
      ],
    );
  }
}
