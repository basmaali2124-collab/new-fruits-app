import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:fruits_app/features/auth/widgets/custom_intro_header.dart';
import 'package:fruits_app/features/bottonnav_screens/app_layout.dart';
import 'package:fruits_app/features/intro/widgets/navigation_function.dart';
import 'package:pinput/pinput.dart';

class EnterOTP extends StatelessWidget {
  EnterOTP({super.key});
  final TextEditingController _pinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const IntroHeader(header: "Enter Received OTP"),
              SizedBox(height: 32.h),
              Pinput(
                obscureText: true,
                length: 4,
                controller: _pinController,
                defaultPinTheme: PinTheme(
                  width: 48,
                  height: 48,
                  textStyle: TextStyle(fontSize: 30),
                  decoration: BoxDecoration(
                    color: Color(0xFFF9F9F9),
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xFF707070)),
                  ),
                ),
              ),
              SizedBox(height: 40.h),
              SizedBox(
                height: 51.h,
                width: 1.sw,
                child: ElevatedButton(
                  onPressed: () {navigateTo(context,AppLayout());},
                  child: Text(
                    'Confirm',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 40.h),
              TimerCountdown(
                format: CountDownTimerFormat.secondsOnly,
                enableDescriptions: false,
                timeTextStyle: TextStyle(color: Color(0xFF707070), fontSize: 30),
                endTime: DateTime.now().add(Duration(seconds: 60)),
              ),
              SizedBox(height: 40.h),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Not received? ',
                      style: TextStyle(color: Color(0xFF707070)),
                    ),
                    TextSpan(
                      text: 'Send Again',
                      style: TextStyle(color: Color(0xFF004D8E)),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
