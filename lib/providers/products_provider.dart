import 'package:flutter/material.dart';

class Product {
  final String title;
  final double price;

  Product({required this.title, required this.price});
}

class ProductsProvider with ChangeNotifier {
  List<Product> _products = [
    Product(title: 'Product 1', price: 29.99),
    Product(title: 'Product 2', price: 59.99),
    // Add more products as needed
  ];

  List<Product> get products => _products;

  void addProduct(Product product) {
    _products.add(product);
    notifyListeners();
  }

  void removeProduct(Product product) {
    _products.remove(product);
    notifyListeners();
  }
}
