import 'package:flutter/material.dart';
import 'package:fruits_app/Shared_widget/green_bold_text16.dart';
import 'package:fruits_app/Shared_widget/medium_bold_text.dart';
import 'package:fruits_app/Shared_widget/medium_text.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            MediumText(text: 'Total Items'),
            Spacer(),
            MediumBoldText(text: '4 items in cart'),
          ],
        ),
        SizedBox(height: 4),
        Row(
          children: [
            MediumText(text: 'Subtotal'),
            Spacer(),
            MediumBoldText(text: '36.00'),
          ],
        ),
        SizedBox(height: 4),
        Row(
          children: [
            MediumText(text: 'Shipping Charges'),
            Spacer(),
            MediumBoldText(text: '1.50'),
          ],
        ),
        Divider(),
        Row(
          children: [
            GreenBoldText(text: 'Bag Total'),
            Spacer(),
            GreenBoldText(text: '37.50'),
          ],
        ),
      ],
    );
  }
}
