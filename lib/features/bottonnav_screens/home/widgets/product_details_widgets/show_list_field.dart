import 'package:flutter/material.dart';

class ShowListField extends StatelessWidget {
  const ShowListField({
    super.key,
    required this.selectedWeight, required this.fieldName,
  });
  final String? selectedWeight;
  final String fieldName;
  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      decoration: InputDecoration(
        hintText: selectedWeight ?? fieldName,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        suffixIcon: const Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 32,
            color: Color(0xFF656565),
          ),
         
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFD9D9D9)),
        ),
        focusedBorder: const UnderlineInputBorder(),
        constraints: BoxConstraints(maxHeight: 28),
        isDense: true,
      ),
    );
  }
}
