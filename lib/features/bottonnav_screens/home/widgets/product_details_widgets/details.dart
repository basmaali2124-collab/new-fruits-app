import 'package:flutter/material.dart';
import 'package:fruits_app/Shared_widget/green_bold_text16.dart';
import 'package:fruits_app/Shared_widget/medium_text.dart';
import 'package:fruits_app/features/bottonnav_screens/home/models/product_model.dart';

class Details extends StatelessWidget {
  const Details({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GreenBoldText(text: product.category),
                Text(
                  product.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MediumText(text: 'Price'),
                Row(
                  children: [
                    MediumText(text: '${product.newPrice}.00kD'),
                    SizedBox(width: 4),
                    Text(
                      '${product.oldPrice}.00KD',
                      style: TextStyle(
                        color: Color(0xFFDF958F),
                        fontSize: 14,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 12),
        MediumText(text: product.description),
        const SizedBox(height: 8),
        const MediumText(text: 'Sell Per : Kartoon'),
        const SizedBox(height: 12),
      ],
    );
  }
}
