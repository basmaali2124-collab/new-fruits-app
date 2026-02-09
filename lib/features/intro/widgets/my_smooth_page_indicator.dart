import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MySmoothPageIndicator extends StatelessWidget {
  const MySmoothPageIndicator({
    super.key,
    required this.pageController, required this.count, required this.size,
  });

  final PageController pageController;
final int count;
final double size;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: count,
      effect: CustomizableEffect(
        activeDotDecoration: DotDecoration(
          width: size,
          height: size,
          color: Color(0xFF204F38),
          dotBorder: DotBorder(color: Color(0xFF204F38)),
          borderRadius: BorderRadius.circular(5),
        ),
        dotDecoration: DotDecoration(
          width: size,
          height: size,
          color: Colors.transparent,
          dotBorder: DotBorder(color: Color(0xFF204F38)),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
