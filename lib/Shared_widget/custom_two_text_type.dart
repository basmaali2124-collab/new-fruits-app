import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Custom2TextType extends StatelessWidget {
  const Custom2TextType({
    super.key,required this.normalText,required this.buttonText,required this.onPressed
  });
 final String normalText;
 final String buttonText;
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: normalText,
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: buttonText,
            style: TextStyle(
              color: Color(0xFF004D8E),
              decoration: TextDecoration.underline,
              height: 4,
              decorationColor: Color(0xFF004D8E),
              decorationThickness: 2,
            ),
            recognizer: TapGestureRecognizer()..onTap = onPressed,
          ),
        ],
      ),
    );
  }
}
