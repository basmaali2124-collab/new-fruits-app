import 'package:flutter/material.dart';

class PrefixOrderStatus extends StatelessWidget {
  const PrefixOrderStatus({
    super.key,
    required this.cardColor,
    required this.cardIcon,
  });

  final Color cardColor;
  final IconData cardIcon;

  @override
  Widget build(BuildContext context) {
    return Container(width: 54,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: const Color(0xFFECECF5), width: 1.5),
      ),
      child: CircleAvatar(
        radius: 32,
        backgroundColor: cardColor.withAlpha(20),
        child:Icon(cardIcon,color: cardColor,)),
    );
  }
}

