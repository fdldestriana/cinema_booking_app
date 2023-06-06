import 'package:flutter/material.dart';
import 'package:cinema_booking_app/core.dart';
import '../controller/invoice_controller.dart';

class InvoiceView extends StatefulWidget {
  const InvoiceView({Key? key}) : super(key: key);

  Widget build(context, InvoiceController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Invoice"),
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
  State<InvoiceView> createState() => InvoiceController();
}
