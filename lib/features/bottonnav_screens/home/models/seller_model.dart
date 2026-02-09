class SellerModel {
  final String name;
  final double rating;
  final String deliveryCost;
  final String time;
  final bool isOpen;
  final String type;
  final String distance;
  final bool isPremium;

  SellerModel({
    required this.name,
    required this.rating,
    required this.deliveryCost,
    required this.isOpen,
    required this.type,
    required this.distance,
    this.isPremium = false, required this.time,
  });
}

final List<SellerModel> sellers = [
  SellerModel(
    name: 'Seller name',
    rating: 4.5,
    deliveryCost: '0.5 KD',
    isOpen: true,
    type: 'Beverages',
    distance: '2.5 KM',
    isPremium: true, time: '40 to 60 min',
  ),
  SellerModel(
    name: 'Seller name',
    rating: 4.2,
    deliveryCost: '1.0 KD',
    isOpen: false,
    type: 'Vegetables',
    distance: '3.1 KM', time: '30 to 50 min',
  ),
  SellerModel(
    name: 'Seller name',
    rating: 5.0,
    deliveryCost: '4.0 KD',
    isOpen: false,
    type: 'Fried Checken',
    distance: '5.0 KM', time: '20 to 40 min',
  ),
];
