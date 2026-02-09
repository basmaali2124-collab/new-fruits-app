import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/features/intro/views/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
@override
void initState(){
  super.initState();
  Future.delayed(Duration(seconds:2),(){ if (mounted){ Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) => Onboarding()),
  );}});
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/splash_screen_background.png",
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              SizedBox(height: 16.h),
              Expanded(
                flex: 3,
                child: Center(child: Image.asset('assets/images/logo.png')),
              ),
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset('assets/images/splash_screen.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
