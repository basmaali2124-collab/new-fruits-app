import 'package:flutter/material.dart';

class GreenBoldText extends StatelessWidget {
  const GreenBoldText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Color(0xFF204F38),
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }
}
