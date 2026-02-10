import 'package:flutter/material.dart';
import 'package:fruits_app/Shared_widget/green_bold_text16.dart';
import 'package:fruits_app/Shared_widget/medium_bold_text.dart';
import 'package:fruits_app/Shared_widget/medium_text.dart';

class PriceDetails extends StatelessWidget {
  const PriceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isSmall = constraints.maxWidth < 400;

        if (isSmall) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _priceRow('Subtotal', '36.00'),
              _priceRow('Shipping', '1.50'),
              _priceRow('Bag Total', '37.50', isTotal: true),
              const SizedBox(height: 16),
              Row(
                children: [
                  Column(
                    children: [
                      MediumText(text: '4items in cart'),
                      MediumBoldText(text: '37.50KD'),
                    ],
                  ),Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Proceed To Checkout'),
                  ),
                ],
              ),
            ],
          );
        }
        return Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    MediumText(text: 'Subtotal'),
                    MediumText(text: 'Shipping Charges'),
                    GreenBoldText(text: 'Bag Total'),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    MediumBoldText(text: '36.00'),
                    MediumBoldText(text: '1.50'),
                    GreenBoldText(text: '37.50'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Column(
                  children: [
                    MediumText(text: '4items in cart'),
                    MediumBoldText(text: '37.50KD'),
                  ],
                ),Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Proceed To Checkout'),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget _priceRow(String title, String value, {bool isTotal = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          isTotal ? GreenBoldText(text: title) : MediumText(text: title),
          isTotal ? GreenBoldText(text: value) : MediumText(text: value),
        ],
      ),
    );
  }
}
