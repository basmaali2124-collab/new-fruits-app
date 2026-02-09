import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/features/bottonnav_screens/home/views/filter_view.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
 const HomeAppBar({super.key, required this.title});
    final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(backgroundColor: Colors.white,
      title: AutoSizeText(
        title,
        maxFontSize: 32,
        style: TextStyle(color: const Color(0xFF204F38), fontSize: 24.sp),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0.1),
        child: Container(color: Colors.grey.shade300, height: 1),
      ),
      actions: [
        InkWell(
          onTap: () {},
          child: Image.asset('assets/icons/search_icon.png', height: 23),
        ),
        SizedBox(width: 12),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return FilterView();
              },
            );
          },
          child: Image.asset('assets/icons/category_icon.png', height: 24),
        ),
        SizedBox(width: 16),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
