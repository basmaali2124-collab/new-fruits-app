import 'package:flutter/material.dart';
import 'package:fruits_app/features/checkout/widgets/delivery_time/delivary_time_checkbox.dart';
import 'package:fruits_app/features/checkout/widgets/payment/order_details.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool creditCardSelected = false;
  bool cashSelected = false;
  bool knetSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Coupon Code', style: TextStyle(fontWeight: FontWeight.bold)),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Apply'),
                ),
              ),
              hintText: 'Do you have any Coupon Code',
              border: OutlineInputBorder(),
            ),
          ),
        ),

        SizedBox(height: 16),
        Text('Order Details', style: TextStyle(fontWeight: FontWeight.bold)),
        Card(
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: OrderDetails(),
          ),
        ),

        SizedBox(height: 16),
        Text('Payment', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: delivaryTimeCheckbox(
              'Credit Card/Debit Card',
              creditCardSelected,
              (val) {
                setState(() {
                  creditCardSelected = val!;
                  if (creditCardSelected) {
                    cashSelected = false;
                    knetSelected = false;
                  }
                });
              },
              'assets/icons/credit.png',
            ),
          ),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: delivaryTimeCheckbox(
              'Cash on Delivery',
              cashSelected,
              (val) {
                setState(() {
                  cashSelected = val!;
                  if (cashSelected) {
                    creditCardSelected = false;
                    knetSelected = false;
                  }
                });
              },
              'assets/icons/cash.png',
            ),
          ),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: delivaryTimeCheckbox(
              'Knet',
              knetSelected,
              (val) {
                setState(() {
                  knetSelected = val!;
                  if (knetSelected) {
                    creditCardSelected = false;
                    cashSelected = false;
                  }
                });
              },
              'assets/icons/knet.png',
            ),
          ),
        ),
      ],
    );
  }
}

