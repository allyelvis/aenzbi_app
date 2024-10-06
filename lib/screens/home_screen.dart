import 'package:flutter/material.dart';
import '../providers/products_provider.dart';
import '../widgets/product_grid.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Aenzbi App')),
      body: ProductGrid(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              title: Text('Orders'),
              onTap: () {
                // Navigate to Orders Screen
              },
            ),
            ListTile(
              title: Text('Accounting'),
              onTap: () {
                // Navigate to Accounting Screen
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // Navigate to Settings Screen
              },
            ),
            ListTile(
              title: Text('Logout'),
              onTap: () {
                // Logout functionality
              },
            ),
          ],
        ),
      ),
    );
  }
}
