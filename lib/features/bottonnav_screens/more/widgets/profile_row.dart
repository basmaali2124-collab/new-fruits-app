import 'package:flutter/material.dart';

class ProfileRow extends StatelessWidget {
  const ProfileRow({
    super.key,
    required this.prefixIcon,
    required this.rowName, required this.onPressed,
  });
  final IconData prefixIcon;
  final String rowName;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(prefixIcon),
          SizedBox(width: 12),
          Text(rowName),
          Spacer(),
          IconButton(onPressed: onPressed,icon: Icon(Icons.keyboard_arrow_right_outlined, color: Color(0xFF858D9A))),
        ],
      ),
    );
  }
}
