import 'package:flutter/material.dart';

class LabelName extends StatelessWidget {
   LabelName({
    super.key,
    required this.labelName,this.withStar=true,
  });
final String labelName;
bool withStar;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: RichText(
        text: TextSpan(
          text: labelName,
          style: TextStyle(color: Color(0xFF858D9A)),
          children: [
            TextSpan(
              text:withStar? '*':"",
              style: TextStyle(color: Color(0xFFED692E)),
            ),],),),);
  }
}
