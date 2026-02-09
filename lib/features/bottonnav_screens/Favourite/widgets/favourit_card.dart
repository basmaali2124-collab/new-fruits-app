import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/Shared_widget/medium_text.dart';
import 'package:fruits_app/Shared_widget/product_avatar.dart';
import 'package:fruits_app/features/bottonnav_screens/Favourite/widgets/remove_product.dart';

class FavouritCard extends StatelessWidget {
  const FavouritCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductAvatar(productImage: 'assets/images/fruits.png'),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    "product name",
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
                      MediumText(text:  '12.00KD'),
                      SizedBox(width: 4),
                      Text(
                        '14.00KD',
                        style: const TextStyle(
                          color: Color(0xFFD1D1D1),
                          fontSize: 14,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  AutoSizeText(
                    "Store Name:Store 1",
                    maxFontSize: 22,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              const Spacer(),
              RemoveProduct(),
            ],
          ),
        ),
      ),
    );
  }
}

