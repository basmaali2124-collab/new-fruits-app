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
  final List<Widget> basketCards = const [
    BasketCard(),
    BasketCard(),
    BasketCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Basket', withPop: false),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final bool isTablet = constraints.maxWidth > 600;

            if (isTablet) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: CustomListView(basketCards: basketCards),
                  ),
                  const SizedBox(width: 20),
                  const Expanded(flex: 1, child: PriceDetails()),
                ],
              );
            } else {
              return Column(
                children: [
                  Expanded(child: CustomListView(basketCards: basketCards)),
                  SizedBox(
                    height: 1,
                    child: DashedLine(
                      path: Path()..lineTo(1.sw, 0),
                      color: const Color(0xFFBFBFBF),
                    ),
                  ),

                  const SizedBox(height: 16),
                  const PriceDetails(),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}

class CustomListView extends StatelessWidget {
  const CustomListView({super.key, required this.basketCards});

  final List<Widget> basketCards;

  @override
  Widget build(BuildContext context) {
    return ListView(children: [...basketCards, const SizedBox(height: 16)]);
  }
}
