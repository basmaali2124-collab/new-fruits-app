import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/Shared_widget/pop_navigator.dart';
import 'package:fruits_app/features/auth/widgets/custom_label_name.dart';
import 'package:fruits_app/features/auth/widgets/phone_text_field.dart';
import 'package:fruits_app/features/bottonnav_screens/more/widgets/update_profile/profile_avatar.dart';

class UpdateProfile extends StatelessWidget {
  UpdateProfile({super.key});
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
              PopNavigator(),
            ProfileAvatar(),
            Text('Welcome, Ahmed',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                  onPressed: () {},
                  child: Text(
                    'Update',
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
