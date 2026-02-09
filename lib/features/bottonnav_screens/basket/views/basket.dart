import 'package:dashed_line/dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/Shared_widget/custom_appbar.dart';
import 'package:fruits_app/features/bottonnav_screens/basket/widgets/basket_card.dart';
import 'package:fruits_app/features/bottonnav_screens/basket/widgets/price_details.dart';

class Basket extends StatefulWidget {
  const Basket({super.key});

  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  final List<Widget> basketCards = [BasketCard(), BasketCard(),BasketCard()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Basket', withPop: false),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                int columns = constraints.maxWidth > 600 ? 2 : 1;
                double itemWidth =
                    (constraints.maxWidth - (columns - 1) * 10) / columns;

                return Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: basketCards
                      .map((card) => SizedBox(
                            width: itemWidth,
                            child: card,
                          ))
                      .toList(),
                );
              },
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 1,
              child: DashedLine(
                path: Path()..lineTo(1.sw, 0),
                color: Color(0xFFBFBFBF),
              ),
            ),
            const SizedBox(height: 10),
            const PriceDetails(),
          ],
        ),
      ),
    );
  }
}

///////////////////////////////////////

