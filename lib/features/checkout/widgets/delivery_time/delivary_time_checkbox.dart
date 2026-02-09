 import 'package:flutter/material.dart';

Row delivaryTimeCheckbox(
    String title,
    bool isSelected,
    void Function(bool?) onChanged,
    String? prefix
  ) {
    return Row(
      children: [
        if(prefix!=null)
         Padding(
           padding: const EdgeInsets.only(right: 4),
           child: Image.asset(prefix),
         ),

        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Spacer(),
        Checkbox(
          value: isSelected,
          onChanged: onChanged,
          shape: const CircleBorder(),
          side: const BorderSide(width: 0.8, color: Color(0xFF204F38)),
        ),
      ],
    );
  }

