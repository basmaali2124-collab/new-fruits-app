class ProductModel {
  final String name;
  final double newPrice;
  final double oldPrice;
  final String discountText;
  final String category;
  final String description;
  final String productImage;
  final String avatarImage;

  ProductModel({
    required this.name,
    required this.newPrice,
    required this.oldPrice,
    required this.discountText,
    required this.productImage,
    required this.avatarImage, required this.category, required this.description,
  });
}

List<ProductModel> products = [
  ProductModel(
    name: 'Product name',
    newPrice: 12,
    oldPrice: 14,
    discountText: 'Up to 10% off',
    productImage: 'assets/images/product_card.png',
    avatarImage: 'assets/images/fruits.png', category: 'Fruits', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  ),
  ProductModel(
    name: 'Product name',
    newPrice: 8,
    oldPrice: 10,
    discountText: 'Up to 22% off',
    productImage: 'assets/images/product_card.png',
    avatarImage: 'assets/images/fruits.png', category: 'vegetables', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  ),
];