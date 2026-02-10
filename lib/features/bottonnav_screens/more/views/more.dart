import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/Shared_widget/custom_appbar.dart';
import 'package:fruits_app/features/bottonnav_screens/app_layout.dart';
import 'package:fruits_app/features/bottonnav_screens/more/widgets/profile_row.dart';
import 'package:fruits_app/features/bottonnav_screens/more/widgets/set_language.dart';
import 'package:fruits_app/features/bottonnav_screens/more/views/contact_us.dart';
import 'package:fruits_app/features/bottonnav_screens/more/views/terms_and_conditions.dart';
import 'package:fruits_app/features/bottonnav_screens/more/views/update_profile.dart';
import 'package:fruits_app/features/intro/widgets/navigation_function.dart';

class More extends StatelessWidget {
 const More({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> moreList = [
      ProfileRow(
        prefixIcon: Icons.person_2_outlined,
        rowName: 'Profile',
        onPressed: () {
          navigateTo(context, UpdateProfile());
        },
      ),
      ProfileRow(
        prefixIcon: Icons.list,
        rowName: 'My Orders',
        onPressed: () {
          AppLayout.controller.jumpToTab(1);
        },
      ),
      ProfileRow(
        prefixIcon: Icons.favorite_border_outlined,
        rowName: 'Favourite',
        onPressed: () {
          AppLayout.controller.jumpToTab(3);
        },
      ),
      ProfileRow(
        prefixIcon: Icons.language,
        rowName: 'Language',
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return SetLanguage();
            },
          );
        },
      ),
      ProfileRow(
        prefixIcon: Icons.headphones_outlined,
        rowName: 'Support',
        onPressed: () {
         navigateTo(context,ContactUs());
        },
      ),
      ProfileRow(
        prefixIcon: Icons.diamond,
        rowName: 'Terms & Condition',
        onPressed: () {
         navigateTo(context, TermsAndConditions());
        },
      ),
      ProfileRow(
        prefixIcon: Icons.info_outline,
        rowName: 'About Us',
        onPressed: () {},
      ),
    ];

    return Scaffold(
      appBar: CustomAppBar(title: 'Fruit Market', withPop: false),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF959CA8)),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.person_2_outlined,
                color: Color(0xFF959CA8),
                size: 40,
              ),
            ),
            SizedBox(height: 8),
            Text('Welcome, Fruit Market',
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600)),
            SizedBox(height: 20),
            SizedBox(
              width: 1.sw > 600 ? 0.5.sw : 0.9.sw,
              child: ElevatedButton(onPressed: () {}, child: Text('Login')),
            ),
            SizedBox(height: 20),
            LayoutBuilder(
              builder: (context, constraints) {
                int columns = constraints.maxWidth > 600 ? 2 : 1;
                double itemWidth =
                    (constraints.maxWidth - (columns - 1) * 10) / columns;

                return Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: moreList
                      .map((row) => SizedBox(width: itemWidth, child: row))
                      .toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
