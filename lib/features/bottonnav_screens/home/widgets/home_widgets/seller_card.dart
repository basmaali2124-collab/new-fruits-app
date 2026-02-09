import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/features/bottonnav_screens/home/models/seller_model.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/home_widgets/logo_avatar.dart';
import 'package:fruits_app/Shared_widget/status_dot.dart';

class SellerCard extends StatelessWidget {
  const SellerCard({super.key,required this.seller, this.onTap,});

final SellerModel seller;
final VoidCallback? onTap;
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
                LogoAvatar(),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                  child: AutoSizeText(
                                    seller.name,
                                    maxFontSize: 28,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                if (seller.isPremium) ...[
                                  const SizedBox(width: 4),
                                  const Icon(
                                    Icons.workspace_premium_outlined,
                                    color: Color(0xFFE82828),
                                    size: 14,
                                  ),
                                ],
                              ],
                            ),
                          ),
                          Text(
                            seller.rating.toString(),
                            style: const TextStyle(
                              color: Color(0xFF656565),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          const Icon(
                            Icons.delivery_dining_sharp,
                            color: Color(0xFF656565),
                            size: 12,
                          ),
                          const SizedBox(width: 4),
                          AutoSizeText(
                            maxFontSize: 12,
                            'Delivery charges: ${seller.deliveryCost}',
                            style:  TextStyle(
                              color: Color(0xFF656565),
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              StatueDot(),
                              const SizedBox(width: 4),
                              Text(
                                seller.isOpen ? 'Open' : 'Close',
                                style: TextStyle(
                                  color: seller.isOpen
                                      ? const Color(0xFF00BB1A)
                                      : const Color(0xFFFF4A4A),
                                      fontSize: 10
                                ),
                              ),
                              const SizedBox(width: 12),
                              StatueDot(),
                              const SizedBox(width: 4),
                              Text(
                                seller.type,
                                style:
                                    const TextStyle(color: Colors.blueGrey,fontSize: 10),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                seller.distance,
                                style: const TextStyle(
                                  color: Color(0xFF204F38),
                                  fontSize: 10,
                                ),
                              ),
                              const Icon(
                                Icons.location_pin,
                                color: Color(0xFF204F38),
                                size: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
