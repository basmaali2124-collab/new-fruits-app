import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({
    super.key,
    required this.bottonName,
    required this.onPressed,
    required this.icon,
    this.isFacebook = false,
  });

  final String bottonName;
  final IconData icon;
  final VoidCallback onPressed;
  final bool isFacebook;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 51.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.transparent,
          side: isFacebook ? null : BorderSide(color: Colors.grey.shade300),
          backgroundColor:
              isFacebook ? const Color(0xFF235C95) : Colors.white,
          foregroundColor:
              isFacebook ? Colors.white : const Color(0xFF242729),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 24),
            SizedBox(width: 8.w),
            AutoSizeText(bottonName,minFontSize: 12,),
          ],
        ),
      ),
    );
  }
}
