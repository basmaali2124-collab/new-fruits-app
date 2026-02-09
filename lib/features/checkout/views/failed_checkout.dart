import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/Shared_widget/custom_appbar.dart';

class FailedCheckout extends StatelessWidget {
  const FailedCheckout({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Checkout'),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/checkout_ops.png'),
              Text(
                'OPS',
                style: TextStyle(
                  color: Color(0xFFFF4A4A),
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),
              Text(
                ' Error while confirming your payment/order',
                style: TextStyle(color: Color(0xFF656565), fontSize: 20),
              ),
              SizedBox(height: 24),
              SizedBox(
                width: 0.7.sw,
                height: 32,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFF4A4A),
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: Text('Back'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
