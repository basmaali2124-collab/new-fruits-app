import 'package:flutter/material.dart';

class PopNavigator extends StatelessWidget {
  const PopNavigator({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
        onPressed: () {Navigator.of(context).pop();},
        icon: Icon(Icons.arrow_back_ios_new),
      ),
    );
  }
}