import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/Shared_widget/custom_appbar.dart';
import 'package:fruits_app/features/bottonnav_screens/home/views/home.dart';
import 'package:fruits_app/features/bottonnav_screens/orders/views/order_tracking.dart';
import 'package:fruits_app/features/intro/widgets/navigation_function.dart';

class ConfirmedCheckout extends StatelessWidget{
  const ConfirmedCheckout({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: CustomAppBar(title: 'Checkout'),
      body: SingleChildScrollView(
        child: Center(child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image.asset('assets/images/checkout_confirmed.png'),
            Text(textAlign: TextAlign.center,'YOUR ORDER IS CONFIRMED!',style: TextStyle(color: Color(0xFF204F38),fontSize: 26,fontWeight: FontWeight.bold),),
            SizedBox(height: 12,),
            Text(textAlign: TextAlign.center,'Your order code: #243188',style: TextStyle(color: Color(0xFF656565),fontSize: 20,)),
            Text(textAlign: TextAlign.center,'Thank you for choosing our products!',style: TextStyle(color: Color(0xFF656565),fontSize: 20,)),
            SizedBox(height: 12,),
            SizedBox( width:1.sw>600? 0.7.sw:0.9.sw,height: 32,child: ElevatedButton(onPressed: (){navigateTo(context, Home());}, child: Text('Continue Shopping'))),
           SizedBox(height: 12,),
           SizedBox( width:1.sw>600? 0.7.sw:0.9.sw,height: 32,child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white,foregroundColor: Color(0xFF204F38),side: BorderSide(color: Color(0xFF204F38))),onPressed: (){navigateTo(context, OrderTracking());}, child: Text('Track Order')))
           
          ],),
        ),),
      ),
    );
  }
}