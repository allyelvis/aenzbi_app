import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  String? _token;

  // Implement authentication methods
  bool get isAuth => _token != null;

  Future<void> login(String email, String password) async {
    // Add login logic
    notifyListeners();
  }

  Future<void> register(String email, String password) async {
    // Add registration logic
    notifyListeners();
  }
}
