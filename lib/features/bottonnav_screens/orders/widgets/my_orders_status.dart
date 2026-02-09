import 'package:flutter/material.dart';

class MyOrdersStatus extends StatelessWidget {
  const MyOrdersStatus({super.key, required this.cardColor});
  final Color cardColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 62,
      height: 62,
      decoration: BoxDecoration(shape: BoxShape.circle, color: cardColor),
      child: Center(
        child: Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            color: cardColor,
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(6),
          ),
          child: const Center(
            child: Center(
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
                size: 12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
