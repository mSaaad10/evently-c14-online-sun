import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evently_c14_online_sun/core/resources/constant_manager.dart';
import 'package:evently_c14_online_sun/data/data_model/categoryDM.dart';
import 'package:flutter/material.dart';

class EventDM {
  final String title;
  final String description;
  final CategoryDM category;
  final String? imagePath;
  final DateTime dateTime;
  int? lat;
  int? lng;

  EventDM(
      {required this.title,
      required this.description,
        required this.category,
       this.imagePath,
      required this.dateTime,
      this.lat,
      this.lng});
  EventDM.fromJson(Map<String, dynamic> json) : this(
    title: json["title"],
    description: json["description"],
    category: ConstantManager.categoriesWithoutAll.firstWhere((category)=>category.id ==json["categoryId"]),
    dateTime: (json["dateTime"] as Timestamp).toDate(),
  );
 Map <String,dynamic>tojson()=>
     {
       "description": description,
       "title": title,
       "categoryId": category.id,
       "dateTime": Timestamp.fromDate(dateTime),
     };
}