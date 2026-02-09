
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/Shared_widget/custom_appbar.dart';
import 'package:fruits_app/features/checkout/views/confirmed_checkout.dart';
import 'package:fruits_app/features/checkout/widgets/custom_easy_stepper.dart.dart';
import 'package:fruits_app/features/checkout/widgets/delivary_address/delivary_address.dart';
import 'package:fruits_app/features/checkout/widgets/delivery_time/delive_time.dart';
import 'package:fruits_app/features/checkout/widgets/payment/payment.dart';
import 'package:fruits_app/features/intro/widgets/navigation_function.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});
  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  int currentStep = 0;
 
 final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Checkout'),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 74, child: Center(child: CustomEasyStepper(activeStep: currentStep),)),
                SizedBox(height: 8),
                Divider(),
                SizedBox( height: 0.6.sh,
                  child: PageView(
                     physics: NeverScrollableScrollPhysics(),
                    controller: _pageController,
                    children: [
                      DeliveryTime(),
                      DelivaryAddress(),
                      SingleChildScrollView(child: Payment())
                    ],
                  ),
                ),
                SizedBox(
                  width:1.sw>600? 0.7.sw:0.9.sw,
                  child: ElevatedButton(
                    onPressed: () {
                      if (currentStep < 2) {
                        setState(() {
                          currentStep++;
                        });
                        _pageController.animateToPage(
                          currentStep,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                      else{navigateTo(context, ConfirmedCheckout());}
                    },
                    child: Text(currentStep == 2?'Place Order': 'Continue'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
