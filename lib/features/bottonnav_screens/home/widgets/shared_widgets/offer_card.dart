import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
   OfferCard({
    super.key,this.isWhite=false
  });
bool isWhite;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 8,
      ),
      decoration:  BoxDecoration(
        color: isWhite? Colors.white:Color(0xFFDF958F),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Text(
       isWhite? "10% Off Discount": 'Up to 10%Off',
        style:  TextStyle(color:isWhite? Color(0xFF656565): Colors.white, fontSize: 12),
      ),
    );
  }
}

