import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SellerCategoryCard extends StatelessWidget {
  const SellerCategoryCard({super.key, required this.path, required this.type});
  final String path;
  final String type;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        children: [
          Container(
            width: 80.w,
            height: 80.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF000000),
                  offset: Offset.zero,
                  blurRadius: 3,
                  spreadRadius: -1,
                ),
              ],
            ),
            child: Image.asset(path),
          ),
          Text(type)
        ],
      ),
    );
  }
}
