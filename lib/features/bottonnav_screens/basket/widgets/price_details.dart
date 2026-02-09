import 'package:flutter/material.dart';
import 'package:fruits_app/Shared_widget/green_bold_text16.dart';
import 'package:fruits_app/Shared_widget/medium_bold_text.dart';
import 'package:fruits_app/Shared_widget/medium_text.dart';
import 'package:fruits_app/features/checkout/views/checkout.dart';
import 'package:fruits_app/features/intro/widgets/navigation_function.dart';

class PriceDetails extends StatelessWidget {
  const PriceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MediumText(text: 'Subtotal'),
            MediumText(text: 'Shipping Charges'),
            GreenBoldText(text: 'Bag Total'),
            const SizedBox(height: 16), 
            MediumText(text: '4 items in cart'),
            MediumBoldText(text: '37.50'),
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            MediumBoldText(text: '36.00'),
            MediumBoldText(text: '1.50'),
            GreenBoldText(text: '37.50'),
            const SizedBox(height: 16), 
            ElevatedButton(
              onPressed: () {
                navigateTo(context, Checkout());
              },
              child: const Text('Proceed To Checkout'),
            ),
          ],
        ),
      ],
    );
  }
}
