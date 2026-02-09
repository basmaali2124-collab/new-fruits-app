import 'package:flutter/material.dart';
import 'package:fruits_app/features/auth/widgets/custom_label_name.dart';
class Cancelelation extends StatefulWidget {
  const Cancelelation({super.key});
  @override
  State<Cancelelation> createState() => _CancelelationState();
}
class _CancelelationState extends State<Cancelelation> {
  bool offersSelected = false;
  bool freeDeliverySelected = false;
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: EdgeInsets.all(16),
      backgroundColor: Colors.white,
      title: Center(child: Text('Canel Order')),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            children: [
              LabelName(labelName: 'Reason', withStar: false),
              TextField(
                decoration: InputDecoration(
                  enabled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF858D9A)),
                  ),
                  prefixIcon: Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Color(0xFF858D9A),
                  ),
                  hint: Text(
                    'Please select reason',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 4),
              LabelName(labelName: 'Notes', withStar: false),
              TextField(maxLines: 3),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Confirm Cancelation'),
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
