import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoAvatar extends StatelessWidget {
  const LogoAvatar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Color(0xFFECECF5), 
          width: 1.5,
        ),
      ),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/sellers.png',
              height: 40.h,
            ),
            AutoSizeText(
              'COMPANY LOGO',
              minFontSize: 4,
              maxFontSize: 8,
              style: TextStyle(
                color: Color(0xFF48464C),
                fontSize: 7.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}