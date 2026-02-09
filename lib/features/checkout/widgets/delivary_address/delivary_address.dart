import 'package:flutter/material.dart';

class DelivaryAddress extends StatefulWidget {
  const DelivaryAddress({super.key});

  @override
  State<DelivaryAddress> createState() => _DelivaryAddressState();
}

class _DelivaryAddressState extends State<DelivaryAddress> {
  bool isSelected = false;

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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: Row(
                    children: const [
                      Text('Add New Address'),
                      Spacer(),
                      Icon(Icons.add),
                    ],
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.location_on_outlined),
                          const SizedBox(width: 6),
                          const Text(
                            'Address1',
                            style: TextStyle(color: Color(0xFF4A4A4A)),
                          ),
                          const Spacer(),
                          Checkbox(
                            value: isSelected,
                            onChanged: (val) {
                              setState(() {
                                isSelected = val!;
                              });
                            },
                            shape: const CircleBorder(),
                            side: const BorderSide(
                              width: 0.8,
                              color: Color(0xFF204F38),
                            ),
                          ),
                        ],
                      ),
                      const Text('John Doe\n +000-11-1234567'),
                      const SizedBox(height: 4),
                      const Text(
                        'Room # 1 - Ground Floor, Al Najoum Building, 24 B Street, Dubai - United Arab Emirates',
                        style: TextStyle(color: Color(0xFF9F9F9F)),
                      ),
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
