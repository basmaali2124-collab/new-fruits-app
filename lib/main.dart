import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/app_theme.dart';
import 'package:fruits_app/features/bottonnav_screens/basket/views/basket.dart';
import 'package:fruits_app/features/intro/views/splash_screen.dart';

void main() async{
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430,932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: appTheme(),
          home://Basket()
          SplashScreen()//UpdateProfile());
           //SellerInfo(seller: sellers[1],));//
         // AppLayout());
          //Checkout()
         // ProductDetails(product: products[1])
          //ProductDetails() );
         // OrderTracking());
         //ContactUs()
        // More()
     //   Orders()
     //Basket()
        );
      }
    );
  }

 
}

