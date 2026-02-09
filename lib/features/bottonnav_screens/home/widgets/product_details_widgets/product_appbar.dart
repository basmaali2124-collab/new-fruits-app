import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/Shared_widget/pop_navigator.dart';
import 'package:fruits_app/features/bottonnav_screens/home/models/product_model.dart';

class ProductAppbar extends StatefulWidget implements PreferredSizeWidget {
  const ProductAppbar({super.key, required this.title, required this.product});
  final String title;
  final ProductModel product;

  @override
  State<ProductAppbar> createState() => _ProductAppbarState();
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
class _ProductAppbarState extends State<ProductAppbar> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const PopNavigator(),
      title: AutoSizeText(
        widget.title,
        maxFontSize: 32,
        style: TextStyle(color: const Color(0xFF204F38), fontSize: 24.sp),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0.1),
        child: Container(color: Colors.grey.shade300, height: 1),
      ),
      actions: [
        IconButton(
          onPressed: () {
            setState(() {
              isFavorite = !isFavorite;
            });
          },
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
            color: isFavorite ? const Color(0xFFD32F2F) : null,
          ),
        ),
        const SizedBox(width: 4),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.file_upload_outlined),
        ),
        const SizedBox(width: 16),
      ],
    );
  }
}
