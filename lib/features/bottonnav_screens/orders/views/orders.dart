import 'package:flutter/material.dart';
import 'package:fruits_app/Shared_widget/custom_appbar.dart';
import 'package:fruits_app/features/bottonnav_screens/orders/views/order_tracking.dart';
import 'package:fruits_app/features/bottonnav_screens/orders/widgets/order_card.dart';
import 'package:fruits_app/features/intro/widgets/navigation_function.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> myOrders = [
      OrderCard(
        cardColor: Colors.amber,
        cardIcon: Icons.local_shipping_outlined,
        status: 'Delivering',
        onTap: () => navigateTo(context, OrderTracking()),
      ),
      OrderCard(
        cardColor: Colors.green,
        cardIcon: Icons.local_shipping_outlined,
        status: 'Finished',
        onTap: () => navigateTo(context, OrderTracking()),
      ),
      OrderCard(
        cardColor: Colors.redAccent,
        cardIcon: Icons.local_shipping_outlined,
        status: 'Canceled',
        onTap: () => navigateTo(context, OrderTracking()),
      ),
      OrderCard(
        cardColor: Colors.blue,
        cardIcon: Icons.local_shipping_outlined,
        status: 'Working',
        onTap: () => navigateTo(context, OrderTracking()),
      ),
      OrderCard(
        cardColor: Colors.purpleAccent,
        cardIcon: Icons.local_shipping_outlined,
        status: 'Delivered',
        onTap: () => navigateTo(context, OrderTracking()),
      ),
    ];

    return Scaffold(
      appBar: CustomAppBar(title: 'My orders',withPop: false,),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: LayoutBuilder(
            builder: (context, constraints) {
              int columns = constraints.maxWidth > 600 ? 2 : 1;
              double itemWidth =
                  (constraints.maxWidth - (columns - 1) * 10) / columns;
          
              return Wrap(
                spacing: 10,
                runSpacing: 10,
                children: myOrders
                    .map(
                      (order) => SizedBox(
                        width: itemWidth,
                        child: order,
                      ),
                    )
                    .toList(),
              );
            },
          ),
        ),
      ),
    );
  }
}
