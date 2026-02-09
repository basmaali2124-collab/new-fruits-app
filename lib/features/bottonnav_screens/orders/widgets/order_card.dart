import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/Shared_widget/medium_text.dart';
import 'package:fruits_app/Shared_widget/status_dot.dart';
import 'package:fruits_app/features/bottonnav_screens/orders/widgets/my_orders_status.dart';
import 'package:fruits_app/features/bottonnav_screens/orders/widgets/prefix_order_status.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
    required this.cardColor,
    required this.cardIcon,
    required this.status, required this.onTap,
  });

  final Color cardColor;
  final IconData cardIcon;
  final String status;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: InkWell(
        onTap: onTap,
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrefixOrderStatus(cardColor: cardColor, cardIcon: cardIcon),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      '#243288-37KD',
                      maxFontSize: 20,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        MediumText(text: '9Sep  '),
                        SizedBox(width: 4),
                        StatueDot(),
                        SizedBox(width: 4),
                        MediumText(text: ' 4items'),
                      ],
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        MediumText(text: 'Status: '),
                        Text(
                          status,
                          style: TextStyle(color: cardColor, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                MyOrdersStatus(cardColor: cardColor),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
