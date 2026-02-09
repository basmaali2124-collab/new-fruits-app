import 'package:flutter/material.dart';
import 'package:fruits_app/features/bottonnav_screens/home/models/product_model.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/filter_widgets/checkbox_function.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/product_details_widgets/details.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/product_details_widgets/product_appbar.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/product_details_widgets/show_list_field.dart';
import 'package:fruits_app/features/bottonnav_screens/home/widgets/shared_widgets/offer_card.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, required this.product});
  final ProductModel product;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  String? selectedWeight;
  String? selectedAddons;

  final List<String> weights = [
    '50Gram - 4.00 KD',
    '1kg - 6.25 KD',
    '2kg - 12.00 KD',
  ];
  final List<String> addons = [
    '50Gram - 4.00 KD',
    '1kg - 6.25 KD',
  ];
  Widget buildOptionSelector({
    required String fieldName,
    required String? selectedOption,
    required List<String> options,
    required Function(String?) onChanged,
    required double width,
  }) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShowListField(selectedWeight: selectedOption, fieldName: fieldName),
          const SizedBox(height: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: options.map((option) {
              return filterCheckBox(
                value: selectedOption == option,
                name: option,
                onChanged: (value) => onChanged(value! ? option : null),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProductAppbar(
        title: widget.product.name,
        product: widget.product,
      ),
    //  bottomNavigationBar: 
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/product_name_card.png',
                      width: 388,
                      height: 232,
                    ),
                    Positioned(
                      right: 12,
                      top: 12,
                      child: OfferCard(isWhite: true),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              // Product Details
              Details(product: widget.product),
              const SizedBox(height: 20),
              // Responsive layout for options
              LayoutBuilder(
                builder: (context, constraints) {
                  int columns = constraints.maxWidth > 600 ? 2 : 1;
                  double itemWidth =
                      (constraints.maxWidth - (columns - 1) * 10) / columns;

                  return Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      // Weight Selector
                      buildOptionSelector(
                        fieldName: 'Select weight',
                        selectedOption: selectedWeight,
                        options: weights,
                        onChanged: (val) => setState(() => selectedWeight = val),
                        width: itemWidth,
                      ),
                      // Addons Selector
                      buildOptionSelector(
                        fieldName: 'Select Addons',
                        selectedOption: selectedAddons,
                        options: addons,
                        onChanged: (val) => setState(() => selectedAddons = val),
                        width: itemWidth,
                      ),
                    ],
                  );
                },
              ),Align(alignment: Alignment.bottomRight,
                child: ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Product added to cart')),
                    );
                  },
                  icon: const Icon(Icons.shopping_basket_outlined),
                  label: const Text('Add to Cart'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
