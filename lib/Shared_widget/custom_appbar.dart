import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/Shared_widget/pop_navigator.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
   CustomAppBar({super.key, required this.title,this.withPop=true});
  final String title;
   bool withPop;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading:withPop==true? const PopNavigator():null,
      title: AutoSizeText(
        title,
        maxFontSize: 32,
        style: TextStyle(color: const Color(0xFF204F38), fontSize: 24.sp),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,

      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0.1),
        child: Container(color: Colors.grey.shade300, height: 1),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
