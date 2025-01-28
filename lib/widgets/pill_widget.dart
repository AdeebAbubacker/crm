import 'package:crm_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class PillWidget extends StatefulWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const PillWidget({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  _PillWidgetState createState() => _PillWidgetState();
}

class _PillWidgetState extends State<PillWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
        decoration: BoxDecoration(
          color: widget.isSelected ? Colors.black : Colors.transparent,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(35), // Oval shape
        ),
        child: Text(
          widget.text,
          style:
              widget.isSelected ? TextStyles.pillStyle1 : TextStyles.pillStyle2,
          // TextStyle(
          //   color: widget.isSelected ? Colors.white : Colors.grey,
          //   fontWeight: FontWeight.w500, // Thin text
          // ),
        ),
      ),
    );
  }
}
