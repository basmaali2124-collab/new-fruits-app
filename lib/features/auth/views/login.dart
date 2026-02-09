import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/features/auth/views/enter_number.dart';
import 'package:fruits_app/features/auth/views/signup.dart';
import 'package:fruits_app/features/auth/widgets/custom_label_name.dart';
import 'package:fruits_app/Shared_widget/custom_two_text_type.dart';
import 'package:fruits_app/features/auth/widgets/custom_intro_header.dart';
import 'package:fruits_app/features/auth/widgets/phone_text_field.dart';
import 'package:fruits_app/features/bottonnav_screens/app_layout.dart';
import 'package:fruits_app/features/intro/widgets/navigation_function.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 40.w, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            const  IntroHeader(header: "Login to Wikala"),
              SizedBox(height: 20.h),
              LabelName(labelName: 'Phone Number '),
              SizedBox(height: 8.h),
              PhoneTextField(phoneController: _phoneController),
              SizedBox(height: 16.h),
              LabelName(labelName: 'Password '),
              SizedBox(height: 8.h),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(hintText: 'Password'),
                obscureText: true,
              ),
              SizedBox(height: 18.h),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                     navigateTo(context,EnterNumber());
                  },
                  child: AutoSizeText(
                    'Forget Password?',
                    maxFontSize: 18,
                    style: TextStyle(
                      color: Color(0xFF004D8E),
                      fontSize: 12.sp,
                      decoration: TextDecoration.underline,
                      height: 1.2,
                      decorationColor: Color(0xFF004D8E),
                      decorationThickness: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 18.h),
              SizedBox(
                height: 51.h,
                width: 1.sw,
                child: ElevatedButton(
                  onPressed: () {navigateTo(context,AppLayout());},
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Custom2TextType(
                normalText: "Don't have an account? ",
                buttonText: "Sign up",
                onPressed: () {
                  navigateTo(context,Signup());},
              ),
            ],
          ),
        ),
      ),
    );
  }
}


