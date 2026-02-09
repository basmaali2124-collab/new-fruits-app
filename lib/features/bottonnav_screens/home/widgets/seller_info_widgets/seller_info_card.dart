import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/features/bottonnav_screens/home/models/seller_model.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/home_widgets/logo_avatar.dart';
import 'package:fruits_app/Shared_widget/status_dot.dart';

class SellerInfoCard extends StatelessWidget {
  const SellerInfoCard({super.key,required this.seller});

final SellerModel seller;
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
              LogoAvatar(),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      seller.name,
                      maxFontSize: 28,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                     const SizedBox(height: 6),
                    Text(
                      'Delivery ${seller.time}',
                      style: const TextStyle(
                        color: Color(0xFF656565),
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                     mainAxisSize: MainAxisSize.min,
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
                        Text(seller.rating.toString(),style: const TextStyle(
                        color: Color(0xFF656565), fontSize: 12, ),),
                      ],
                    ),
                  ],
                ),
              ),
              
               if (seller.isPremium) 
                        const SizedBox(width: 4),
                        const Icon(
                          Icons.workspace_premium_outlined,
                          color: Color(0xFFE82828),
                          size: 14,
                        ),
                      
            ],
          ),
        ),
      ),
    );
  }
}
