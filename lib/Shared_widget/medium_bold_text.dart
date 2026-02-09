import 'package:flutter/material.dart';

class MediumBoldText extends StatelessWidget {
  const MediumBoldText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Color(0xFF656565),
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }
}
