import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/features/intro/views/welcome_screen.dart';
import 'package:fruits_app/features/intro/widgets/navigation_function.dart';

class SkipWidget extends StatelessWidget {
  const SkipWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              navigateTo(context, WelcomeScreen());
            },
            child: Text(
              'Skip',
              style: TextStyle(
                color: Color(0xFF656565),
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(
            width: 28,
            child: Divider(height: 4.h, color: Color(0xFF656565)),
          ),
        ],
      ),
    );
  }
}
