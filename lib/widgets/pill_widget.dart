
import 'package:flutter/material.dart';

class PillWidget extends StatelessWidget {
  final String text;

  const PillWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20), // Oval shape
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w300, // Thin text
        ),
      ),
    );
  }
}
