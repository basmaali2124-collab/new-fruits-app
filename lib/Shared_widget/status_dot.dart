import 'package:flutter/material.dart';

class StatueDot extends StatelessWidget {
   StatueDot({super.key,this.dotColor=const Color(0xFFC8C8C8)});
 Color dotColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 6,
      height: 6,
      decoration: BoxDecoration(
        color: dotColor, 
        
        shape: BoxShape.circle,
      ),
    );
  }
}