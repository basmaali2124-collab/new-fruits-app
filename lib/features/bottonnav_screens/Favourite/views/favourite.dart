import 'package:flutter/material.dart';
import 'package:fruits_app/Shared_widget/custom_appbar.dart';
import 'package:fruits_app/features/bottonnav_screens/Favourite/widgets/favourit_card.dart';

class Favourite extends StatelessWidget {
   Favourite({super.key});
List<Widget>favouriteList=[FavouritCard(),FavouritCard(),FavouritCard()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Favorite',withPop: false,),
      body: SingleChildScrollView(
          child: LayoutBuilder(
            builder: (context, constraints) {
              int columns = constraints.maxWidth > 600 ? 2 : 1;
              double itemWidth =
                  (constraints.maxWidth - (columns - 1) * 10) / columns;
          
              return Wrap(
                spacing: 10,
                runSpacing: 10,
                children: favouriteList
                    .map(
                      (order) => SizedBox(
                        width: itemWidth,
                        child: order,
                      ),
                    )
                    .toList(),
              );
            },))
     
    );
  }
}
