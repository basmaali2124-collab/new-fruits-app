import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final double size;

  const ProfileAvatar({super.key, this.size = 100});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 80,height: 80,
      child: Stack(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Color(0xFF204F38)),
            ),
          ),
          Positioned(
            top: 24,
            left: 32,
            child: IconButton(
              icon: Icon(Icons.camera_alt_outlined, color: Color(0xFF204F38), size: size * 0.3),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
