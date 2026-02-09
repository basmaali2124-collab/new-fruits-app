import 'package:flutter/material.dart';
import 'package:fruits_app/features/checkout/widgets/delivery_time/delivary_time_checkbox.dart';
import 'package:fruits_app/features/checkout/widgets/delivery_time/select_date.dart';

class DeliveryTime extends StatefulWidget {
  const DeliveryTime({super.key});

  @override
  State<DeliveryTime> createState() => _DeliveryTimeState();
}

class _DeliveryTimeState extends State<DeliveryTime> {
  bool nowSelected = false;
  bool timeSelected = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int columns = constraints.maxWidth > 600 ? 2 : 1;
        double itemWidth =
            (constraints.maxWidth - (columns - 1) * 10) / columns;

        return Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            SizedBox(
              width: itemWidth,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: delivaryTimeCheckbox(
                    'Now',
                    nowSelected,
                    (val) {
                      setState(() {
                        nowSelected = val!;
                        if (nowSelected) timeSelected = false;
                      });
                    },
                    null,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: itemWidth,
              child: Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                    children: [
                      delivaryTimeCheckbox(
                        'Select Delivery Time',
                        timeSelected,
                        (val) {
                          setState(() {
                            timeSelected = val!;
                            if (timeSelected) nowSelected = false;
                          });
                        },
                        null,
                      ),
                      if (timeSelected) DatePickerField(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
