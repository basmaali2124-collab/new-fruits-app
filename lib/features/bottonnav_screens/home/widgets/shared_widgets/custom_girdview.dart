import 'package:flutter/material.dart';

class CustomGridView<T> extends StatelessWidget {
  const CustomGridView({
    super.key,
    required this.items,
    required this.itemBuilder,
    this.spacing = 10,
    this.columnsForWideScreen = 2,
    this.breakpoint = 600,
  });

  final List<T> items;
  final Widget Function(T item) itemBuilder;
  final double spacing;
  final int columnsForWideScreen;
  final double breakpoint; 

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int columns = constraints.maxWidth > breakpoint ? columnsForWideScreen : 1;
        double width = (constraints.maxWidth - (columns - 1) * spacing) / columns;

        return Wrap(
          spacing: 10,
          runSpacing: 10,
          children: items.map((item) {
            return SizedBox(
              width: width,
              child: itemBuilder(item),
            );
          }).toList(),
        );
      },
    );
  }
}
