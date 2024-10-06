import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  // Cart logic and management
  List<CartItem> _cartItems = [];

  List<CartItem> get cartItems => _cartItems;

  void addItem(CartItem item) {
    // Logic to add item
    notifyListeners();
  }

  double totalAmount() {
    // Logic to calculate total amount
    return _cartItems.fold(0, (sum, item) => sum + (item.price * item.quantity));
  }
}

class CartItem {
  final String title;
  final double price;
  final int quantity;

  CartItem({required this.title, required this.price, required this.quantity});
}
