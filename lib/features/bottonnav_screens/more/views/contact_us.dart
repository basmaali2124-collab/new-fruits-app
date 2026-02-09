import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/Shared_widget/custom_appbar.dart';
import 'package:fruits_app/features/auth/widgets/custom_label_name.dart';

class ContactUs extends StatelessWidget {
  ContactUs({super.key});
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<Widget> contactList = [
      Column(
        children: [
          LabelName(labelName: 'Name ', withStar: false),
          SizedBox(height: 8.h),
          TextFormField(controller: _nameController),
        ],
      ),
      Column(
        children: [
          LabelName(labelName: 'Mopile Phone', withStar: false),
          SizedBox(height: 8.h),
          TextFormField(controller: _phoneController),
        ],
      ),
    ];
    return Scaffold(
      appBar: CustomAppBar(title: 'Conyact Us'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LayoutBuilder(
                builder: (context, constraints) {
                  int columns = constraints.maxWidth > 600 ? 2 : 1;
                  double itemWidth =
                      (constraints.maxWidth - (columns - 1) * 10) / columns;

                  return Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: contactList
                        .map((row) => SizedBox(width: itemWidth, child: row))
                        .toList(),
                  );
                },
              ),
              SizedBox(height: 16.h),
              LabelName(labelName: 'Message ', withStar: false),
              SizedBox(height: 8.h),
              TextFormField(controller: _passwordController, maxLines: 4),
              SizedBox(height: 32.h),
              SizedBox(
                height: 51.h,
                width: 1.sw,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Supmit',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/whatsap.png'),
                    SizedBox(width: 12.w),
                    Image.asset('assets/icons/facebook.png'),
                    SizedBox(width: 12.w),
                    Image.asset('assets/icons/insta.png'),
                    SizedBox(width: 12.w),
                    Image.asset('assets/icons/youtube.png'),
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
