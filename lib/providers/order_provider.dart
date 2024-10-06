import 'package:flutter/material.dart';

class Order {
  final String id;
  final double amount;
  final DateTime dateTime;

  Order({required this.id, required this.amount, required this.dateTime});
}

class OrderProvider with ChangeNotifier {
  List<Order> _orders = [];

  List<Order> get orders => _orders;

  void addOrder(Order order) {
    _orders.add(order);
    notifyListeners();
  }
}
