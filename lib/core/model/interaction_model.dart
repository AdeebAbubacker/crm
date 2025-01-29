import 'package:flutter/material.dart';

class InteractionModel {
  final Color color;
  final String date;
  final String text;
  final String price;
  final List<String> images;

  InteractionModel({
    required this.color,
    required this.date,
    required this.text,
    required this.price,
    required this.images,
  });
}
