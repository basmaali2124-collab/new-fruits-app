import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_app/features/auth/views/signup.dart';
import 'package:fruits_app/features/intro/widgets/navigation_function.dart';

class ContinueRules extends StatelessWidget {
  const ContinueRules({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By continue you agree to our',
            style: TextStyle(color: Color(0xFF88909C)),
          ),
          TextSpan(
            text: ' Terms of service\n',
            style: TextStyle(color: Color(0xFF004D8E)),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          TextSpan(
            text: 'and our',
            style: TextStyle(color: Color(0xFF88909C)),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: TextStyle(color: Color(0xFF004D8E)),
            recognizer: TapGestureRecognizer()..onTap = () {navigateTo(context,Signup());},
          ),
        ],
      ),
    );
  }
}

