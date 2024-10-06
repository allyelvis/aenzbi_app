import 'package:flutter/material.dart';

class Transaction {
  final String id;
  final double amount;
  final String description;
  final DateTime date;

  Transaction({required this.id, required this.amount, required this.description, required this.date});
}

class AccountingProvider with ChangeNotifier {
  List<Transaction> _transactions = [];

  List<Transaction> get transactions => _transactions;

  void addTransaction(Transaction transaction) {
    _transactions.add(transaction);
    notifyListeners();
  }

  double get totalIncome {
    return _transactions.where((tx) => tx.amount > 0).fold(0.0, (sum, item) => sum + item.amount);
  }

  double get totalExpenses {
    return _transactions.where((tx) => tx.amount < 0).fold(0.0, (sum, item) => sum + item.amount);
  }
}
