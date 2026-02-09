import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/Shared_widget/medium_text.dart';
import 'package:fruits_app/Shared_widget/product_avatar.dart';
import 'package:fruits_app/features/bottonnav_screens/home/models/product_model.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/shared_widgets/offer_card.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product, required this.onTap});
final ProductModel product;
  final VoidCallback onTap;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: InkWell(
        onTap: onTap,
        child: Card(
        
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               ProductAvatar(productImage: product.avatarImage),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      product.name,
                      maxFontSize: 22,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        MediumText(text: '${product.newPrice.toStringAsFixed(2)} KD'),
                        SizedBox(width: 4),
                        Text(
                          '${product.oldPrice.toStringAsFixed(2)} KD',
                          style: const TextStyle(
                            color: Color(0xFFD1D1D1),
                            fontSize: 14,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6),
                    if (product.discountText.isNotEmpty)
                     OfferCard()
                  ],
                ),
                const Spacer(),
                Image.asset(product.productImage,height: 40,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
