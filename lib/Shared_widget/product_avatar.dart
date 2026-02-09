import 'package:flutter/material.dart';

class ProductAvatar extends StatelessWidget {
  const ProductAvatar({super.key, required this.productImage});

  final String productImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 88,
     padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
       
        shape: BoxShape.circle,
        border: Border.all(color: const Color(0xFFECECF5), width: 1.5),
      ),
      child: CircleAvatar(
        radius: 28,
        backgroundColor: Colors.white,
        child: Image.asset(productImage),
      ),
    );
  }
}
