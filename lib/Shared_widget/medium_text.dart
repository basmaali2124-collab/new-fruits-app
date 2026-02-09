import 'package:flutter/material.dart';

class MediumText extends StatelessWidget {
  const MediumText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: Color(0xFF656565), fontSize: 14));
  }
}
