import 'package:flutter/foundation.dart';

class Category {
  const Category({
    @required this.image,
    @required this.name,
  });

  final String image;
  final String name;

  static List<Category> getIndianRestaurants() {
    return const [
      Category(image: 'assets/images/11.jpg', name: 'สปาและนวด'),
      Category(image: 'assets/images/13.jpg', name: 'ดูแลศรีษะ'),
      Category(image: 'assets/images/14.jpg', name: 'ดูแลร่างกาย'),
      Category(image: 'assets/images/15.jpeg', name: 'ดูแลหน้า'),
      Category(image: 'assets/images/17.jpg', name: 'ดูแลเท้า'),
    ];
  }
}
