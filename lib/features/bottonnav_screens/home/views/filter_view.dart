import 'package:flutter/material.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/filter_widgets/checkbox_function.dart';

class FilterView extends StatefulWidget {
  const FilterView({super.key});
  @override
  State<FilterView> createState() => _FilterViewState();
}
class _FilterViewState extends State<FilterView> {
  bool offersSelected = false;
  bool freeDeliverySelected = false;
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: EdgeInsets.all(16),
      backgroundColor: Colors.white,
      title: Center(child: Text('Fillter by')),
      children: [
        Row(
          children: [
            Text(
              'Delivered To ',
              style: TextStyle(color: Color(0xFF858D9A), fontSize: 14),
            ),
            Icon(
              Icons.delivery_dining_outlined,
              size: 14,
              color: Color(0xFF858D9A),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: SizedBox(
            height: 32,
            child: TextField(
              readOnly: true,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Color(0xFF858D9A),
                ),
                hint: Text('All Areas', style: TextStyle(color: Colors.black)),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 28,
          child: filterCheckBox(
            value: offersSelected,
            name: 'Offers',
            onChanged: (value) {
              setState(() {
                offersSelected = value!;
              });
            },
          ),
        ),
        filterCheckBox(
          value: freeDeliverySelected,
          name: 'Free Delivery',
          onChanged: (value) {
            setState(() {
              freeDeliverySelected = value!;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Apply Filter'),
          ),
        ),
        SizedBox(
          width: 80,
          child: Center(
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ),
        ),
      ],
    );
  }
}
