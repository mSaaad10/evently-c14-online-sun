import 'package:flutter/material.dart';

class EventDM {
  final String title;
  final String description;
  final String category;
  final String imagePath;
  final DateTime date;
  final TimeOfDay time;
  int? lat;
  int? lng;

  EventDM(
      {required this.title,
      required this.description,
      required this.category,
      required this.imagePath,
      required this.date,
      required this.time,
      this.lat,
      this.lng});
}
