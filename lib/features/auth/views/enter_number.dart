import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/features/auth/views/enter_otp.dart';
import 'package:fruits_app/features/auth/widgets/custom_label_name.dart';
import 'package:fruits_app/features/auth/widgets/custom_intro_header.dart';
import 'package:fruits_app/features/auth/widgets/phone_text_field.dart';
import 'package:fruits_app/features/intro/widgets/navigation_function.dart';

class EnterNumber extends StatelessWidget {
  EnterNumber({super.key});

  final TextEditingController _phoneController = TextEditingController();

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
             const IntroHeader(header:  "Enter your Number",),
              SizedBox(height: 20.h),
              LabelName(labelName: 'Phone Number '),
              SizedBox(height: 8.h),
              PhoneTextField(phoneController: _phoneController),
              SizedBox(height: 40.h),
              SizedBox(
                height: 51.h,
                width: 1.sw,
                child: ElevatedButton(
                  onPressed: () {
                   navigateTo(context,EnterOTP()); 
                  },
                  child:const Text(
                    'Submit',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

