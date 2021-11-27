import 'package:flutter/material.dart';
import 'package:lettutorapp/Widget/booking_history_card.dart';

class BookingHistoryPage extends StatelessWidget {
  const BookingHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          title: const Text(
            'Booking History',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: const SafeArea(child: BookingHistory()),
      ),
    );
  }
}

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
