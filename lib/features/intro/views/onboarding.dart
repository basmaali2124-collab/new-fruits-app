import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/features/intro/views/welcome_screen.dart';
import 'package:fruits_app/features/intro/widgets/my_pageview.dart';
import 'package:fruits_app/features/intro/widgets/my_smooth_page_Indicator.dart';
import 'package:fruits_app/features/intro/widgets/navigation_function.dart';
import 'package:fruits_app/features/intro/widgets/skip_widget.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});
  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController pageController = PageController();
  bool isLast = false;
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!isLast) SkipWidget(),
                SizedBox(
                  height: 442.h,
                  child: PageView(
                     physics: NeverScrollableScrollPhysics(),
                    controller: pageController,
                    onPageChanged: (index) {
                      setState(() {
                        isLast = index == 2;
                      });
                    },
                    children: [
                      MyPageView(
                        boldText: 'E shopping',
                        normalText: 'Explore op organic fruits & grab them',
                        pageController: pageController,
                      ),
                      MyPageView(
                        boldText: 'Delivery Arrived',
                        normalText: 'Order is arrived ot your place',
                        pageController: pageController,
                      ),
                      MyPageView(
                        boldText: 'Delivery Arrived',
                        normalText: 'Order is arrived ot your place',
                        pageController: pageController,
                      ),
                    ],
                  ),
                ),
                MySmoothPageIndicator(
                  pageController: pageController,
                  count: 3,
                  size: 12,
                ),
                SizedBox(height: 84.h),
                SizedBox(
                  width: 177.w,
                  height: 52.h,
                  child: ElevatedButton(
                    onPressed: () {
                      if (!isLast) {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      } else {
                        navigateTo(context, WelcomeScreen());
                      }
                    },
                    child: Text(isLast ? 'Get Started' : 'Next'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
