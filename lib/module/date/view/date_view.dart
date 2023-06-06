import 'package:flutter/material.dart';
import 'package:cinema_booking_app/core.dart';
import '../controller/date_controller.dart';

class DateView extends StatefulWidget {
  const DateView({Key? key}) : super(key: key);

  Widget build(context, DateController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Date"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }

  @override
  State<DateView> createState() => DateController();
}
