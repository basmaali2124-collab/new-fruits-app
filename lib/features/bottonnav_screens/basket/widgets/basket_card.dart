import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/Shared_widget/medium_text.dart';
import 'package:fruits_app/Shared_widget/product_avatar.dart';
import 'package:fruits_app/features/bottonnav_screens/basket/widgets/product_counter.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/shared_widgets/offer_card.dart';

class BasketCard extends StatelessWidget {
  const BasketCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProductAvatar(
                productImage: 'assets/images/fruits.png',
              ),

              const SizedBox(width: 12),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      'Product name',
                      maxFontSize: 28,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: const [
                        MediumText(text: '12.00KD'),
                        SizedBox(width: 4),
                        Text(
                          '14.00KD',
                          style: TextStyle(
                            color: Color(0xFFD1D1D1),
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    OfferCard(),
                  ],
                ),
              ),

              const SizedBox(width: 8),

              Column(
                children: const [
                  Icon(Icons.delete_forever),
                  SizedBox(height: 12),
                  Productcounter(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
