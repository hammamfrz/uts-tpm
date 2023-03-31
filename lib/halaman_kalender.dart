import 'dart:async';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HalamanKalender extends StatefulWidget {
  const HalamanKalender({super.key});

  @override
  _HalamanKalenderState createState() => _HalamanKalenderState();
}

class _HalamanKalenderState extends State<HalamanKalender> {
  late String _timeString;

  @override
  void initState() {
    _timeString = _formatDateTime(DateTime.now());
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalender'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          CalendarDatePicker2(
            config: CalendarDatePicker2Config(
              calendarType: CalendarDatePicker2Type.single,
              selectedDayHighlightColor: Colors.blue,
            ),
              initialValue: [],
          ),
          const SizedBox(height: 50.0),
          Text('Waktu Dalam WIB', style: TextStyle(fontSize: 20.0)),
          const SizedBox(height: 20.0),
          Text(_timeString),
          const SizedBox(height: 30.0),
          Text('Waktu Dalam WITA', style: TextStyle(fontSize: 20.0)),
          const SizedBox(height: 20.0),
          Text(_formatDateTime(DateTime.now().add(Duration(hours: 1)))),
          const SizedBox(height: 30.0),
          Text('Waktu Dalam WIT', style: TextStyle(fontSize: 20.0)),
          const SizedBox(height: 20.0),
          Text(_formatDateTime(DateTime.now().add(Duration(hours: 2)))),
        ],
      ),
      );
  }

  void _getTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = _formatDateTime(now);
    setState(() {
      _timeString = formattedDateTime;
    });
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('MM/dd/yyyy hh:mm:ss').format(dateTime);
  }
}