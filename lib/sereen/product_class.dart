import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demoProduct = [
  Product(image: "assets/logo.png", title: "best shirt", price: 970),
  Product(image: "assets/logo.png", title: "best shirt", price: 970),
  Product(image: "assets/logo.png", title: "best shirt", price: 970),
  Product(image: "assets/logo.png", title: "best shirt", price: 970),
];
