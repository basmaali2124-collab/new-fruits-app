import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/features/bottonnav_screens/home/models/seller_model.dart';
import 'package:fruits_app/features/bottonnav_screens/home/views/seller_info.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/home_widgets/category_card.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/shared_widgets/custom_girdview.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/home_widgets/home_appbar.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/home_widgets/seller_card.dart';
import 'package:fruits_app/features/intro/widgets/my_smooth_page_indicator.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(title: 'Fruit Market',),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/home_main_card.png'),
              SizedBox(height: 16),
              MySmoothPageIndicator(
                pageController: _pageController,
                count: 4,
                size: 8,
              ),
              SizedBox(height: 16),
              Center(
                child: SizedBox(
                  width: 377.w,
                  height: 100.h,
                  child: Row(
                    children: [
                      CategoryCard(path: 'assets/images/restorants.png'),
                      CategoryCard(path: 'assets/images/farm.png'),
                      CategoryCard(path: 'assets/images/coffee.png'),
                      CategoryCard(path: 'assets/images/pharma.png'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Row(
                  children: [
                    Text(
                      'Sellers',
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomGridView<SellerModel>(
                  items: sellers,
                  itemBuilder: (seller) => SellerCard(
                    seller: seller,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => SellerInfo(seller: seller),
                        ),
                      );
                    },
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
