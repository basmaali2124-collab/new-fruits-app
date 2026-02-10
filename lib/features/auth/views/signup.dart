import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/features/auth/views/login.dart';
import 'package:fruits_app/features/auth/widgets/custom_label_name.dart';
import 'package:fruits_app/Shared_widget/custom_two_text_type.dart';
import 'package:fruits_app/features/auth/widgets/custom_intro_header.dart';
import 'package:fruits_app/features/auth/widgets/phone_text_field.dart';
import 'package:fruits_app/features/bottonnav_screens/app_layout.dart';
import 'package:fruits_app/features/intro/widgets/navigation_function.dart';

class Signup extends StatelessWidget {
  Signup({super.key});
  final TextEditingController _nameController = TextEditingController();
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
              const IntroHeader(header: "Sign Up to Wikala"),
              SizedBox(height: 20.h),
               LabelName(labelName: 'Full name '),
              SizedBox(height: 8.h),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  hintText: 'First and Last Name',
                ),
              ),
              SizedBox(height: 16.h),
               LabelName(labelName: 'Phone Number with Whatsapp '),
              SizedBox(height: 8.h),
              PhoneTextField(phoneController: _phoneController),
              SizedBox(height: 16.h),
               LabelName(labelName: 'Password '),
              SizedBox(height: 8.h),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(hintText: 'Password'),
                obscureText: true,
              ),
              SizedBox(height: 32.h),
              SizedBox(
                height: 51.h,
                width: 1.sw,
                child: ElevatedButton(
                  onPressed: () {navigateTo(context,AppLayout());},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Custom2TextType(
                normalText: "Already have an account? ",
                buttonText: "Login",
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Login()));
              },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
