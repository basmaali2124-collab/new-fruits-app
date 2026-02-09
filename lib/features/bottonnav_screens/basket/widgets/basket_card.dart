import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/Shared_widget/medium_text.dart';
import 'package:fruits_app/Shared_widget/product_avatar.dart';
import 'package:fruits_app/features/bottonnav_screens/basket/widgets/product_counter.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/shared_widgets/offer_card.dart';

class BasketCard extends StatefulWidget {
  const BasketCard({
    super.key
  });
  @override
  State<BasketCard> createState() => _BasketCardState();
}
class _BasketCardState extends State<BasketCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12,),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductAvatar( productImage: 'assets/images/fruits.png',),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    'Product name',
                    maxFontSize: 20,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      MediumText(text: '12.00KD'),
                      SizedBox(width: 4),
                      Text(
                        ' 14.00KD',
                        style:  TextStyle(
                          color: Color(0xFFD1D1D1),
                          fontSize: 14,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  //if (product.discountText.isNotEmpty)
                  OfferCard(),
                ],
              ),
              //const Spacer(),
              Column(mainAxisSize: .min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {}, icon: Icon(Icons.delete_forever),
                  ),SizedBox(height:20 ,),
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

