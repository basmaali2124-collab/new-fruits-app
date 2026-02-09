import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/Shared_widget/pop_navigator.dart';
import 'package:fruits_app/features/bottonnav_screens/home/models/product_model.dart';
import 'package:fruits_app/features/bottonnav_screens/home/models/seller_model.dart';
import 'package:fruits_app/features/bottonnav_screens/home/views/product_details.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/shared_widgets/custom_girdview.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/seller_info_widgets/product_card.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/seller_info_widgets/seller_category.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/seller_info_widgets/seller_info_card.dart';

class SellerInfo extends StatelessWidget {
   SellerInfo({super.key, required this.seller});
  final SellerModel seller;
  List<ProductModel> favorites = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.1),
          child: Container(color: Colors.grey.shade300, height: 1),
        ),
        leading: PopNavigator(),
        centerTitle: true,
        title: Text(
          'Fruit Market',
          style: TextStyle(color: Color(0xFF204F38), fontSize: 24),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Image.asset('assets/icons/search_icon.png', height: 23),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SellerInfoCard(seller: seller),
              SizedBox(height: 4),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Categories',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 4),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 377.w,
                  height: 132.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SellerCategoryCard(
                        path: 'assets/images/fruits.png',
                        type: 'Fruits',
                      ),
                      SellerCategoryCard(
                        path: 'assets/images/vegetables.png',
                        type: 'Vegetables',
                      ),
                      SellerCategoryCard(
                        path: 'assets/images/Iphone.png',
                        type: 'Phone',
                      ),
                      SellerCategoryCard(
                        path: 'assets/images/pets.png',
                        type: 'Pets',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: SizedBox(
                  width: 1.sw,
                  child: Row(
                    children: [
                      Text(
                        'Products',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Show all',
                        style: TextStyle(color: Color(0xFF235C95)),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomGridView<ProductModel>(
                  items: products,
                  itemBuilder: (product) => ProductCard(product: product, onTap:() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ProductDetails(product: product,),
                        ),
                      );
                    },),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
