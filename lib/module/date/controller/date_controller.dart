import 'package:flutter/material.dart';
import 'package:cinema_booking_app/state_util.dart';
import '../view/date_view.dart';

class DateController extends State<DateView> implements MvcController {
  static late DateController instance;
  late DateView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}