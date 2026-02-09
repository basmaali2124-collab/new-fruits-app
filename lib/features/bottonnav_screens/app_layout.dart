import 'package:flutter/material.dart';
import 'package:fruits_app/features/bottonnav_screens/basket/views/basket.dart';
import 'package:fruits_app/features/bottonnav_screens/Favourite/views/favourite.dart';
import 'package:fruits_app/features/bottonnav_screens/home/views/home.dart';
import 'package:fruits_app/features/bottonnav_screens/more/views/more.dart';
import 'package:fruits_app/features/bottonnav_screens/orders/views/orders.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({super.key});
  @override
  State<AppLayout> createState() => _AppLayoutState();
}
class _AppLayoutState extends State<AppLayout> {
  List<Widget> _buildScreens() {
    return [Home(), Orders(), Basket(), Favourite(), More()];
  }
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      backgroundColor: Color(0xFF204F38),
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
        colorBehindNavBar: Colors.white,
      ),
      navBarStyle: NavBarStyle.style7,
      items: [
        navBarItem(Icons.home_outlined, 'Home'),
        navBarItem(Icons.list_outlined, 'Orders'),
        navBarItem(Icons.shopping_bag_outlined, 'Basket'),
        navBarItem(Icons.favorite_border_outlined, 'Favourite'),
        navBarItem(Icons.more_horiz_outlined, 'More'),
      ],
    );
  }

  PersistentBottomNavBarItem navBarItem(IconData icon, String title) {
    return PersistentBottomNavBarItem(
      icon: Icon(icon),
      title: title,
      textStyle: TextStyle(fontWeight: FontWeight.bold),
      activeColorPrimary: Colors.white,
      activeColorSecondary: Color(0xFF204F38),
      inactiveColorPrimary: Colors.white,
      inactiveColorSecondary: Colors.white,
    );
  }
}
