import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/Shared_widget/custom_appbar.dart';
import 'package:fruits_app/features/bottonnav_screens/orders/views/cancelelation.dart';
import 'package:fruits_app/features/bottonnav_screens/orders/widgets/order_tracking_stepper.dart';

class OrderTracking extends StatelessWidget {
  const OrderTracking({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Order Tracking'),
      body: SingleChildScrollView(
        child: Padding(
           padding:  EdgeInsets.symmetric(horizontal:1.sw>600? 40.w:20, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NormalText(text: 'Your Order Code'),
                  Text(
                    '#882610',
                    style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF656565),fontSize: 18),
                  ),
                ],
              ),SizedBox(height: 4,),
              NormalText(text: '3items-37.50KD'),
              SizedBox(height: 4,),
              NormalText(text: 'Payment Method : Cash'),
              
              Row(
                children: [
                  OrderTrackingStepper(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BoldText(text: 'Delivered',),
                      NormalText(text: 'Estmiated for 10 September,2021',),
                      SizedBox(height: 72.h),
                      BoldText(text: 'Out of Delivery',),
                       NormalText(text: 'Estmiated for 10 September,2021',),
                     SizedBox(height: 72.h),
                     BoldText(text: 'Order shipped',),
                       NormalText(text: 'Estmiated for 10 September,2021',),
                     SizedBox(height:72.h ),
                      BoldText(text: 'Confirmed',),
                      NormalText(text: 'Your order has been confirme',),
                      SizedBox(height: 80.h),
                      BoldText(text: 'Order Place',),
                      NormalText(text: 'We have received your order',),
                     
                     ],
                  ),
                ],
              ),

              SizedBox(
                  height: 51.h,
                width: 1.sw,
                child: ElevatedButton(onPressed: () {}, child: Text('Confirm')),
              ),
              SizedBox(height: 8),
              SizedBox(
                height: 51.h,
                width: 1.sw,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFF4A4A),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Cancelelation();
                      },
                    );
                  },
                  child: Text('Concel Order'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NormalText extends StatelessWidget {
  const NormalText({
      super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(maxFontSize:20 ,text,style: TextStyle(fontSize: 18.sp,color: Color(0xFF656565)),
                        );
  }
}

class BoldText extends StatelessWidget {
  const BoldText({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return  AutoSizeText(maxFontSize:24,
      text,
      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21.sp,color: Color(0xFF292727)),
    );
  }
}
