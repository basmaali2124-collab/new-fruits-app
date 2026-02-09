import 'package:flutter/material.dart';

class RemoveProduct extends StatelessWidget {
  const RemoveProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 26,
      height: 26,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(color: Color(0xFFD1D1D1)),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.close_rounded),
        padding: EdgeInsets.all(0),
        constraints: BoxConstraints(),
        color: Color(0xFFD1D1D1),
      ),
    );
  }
}
