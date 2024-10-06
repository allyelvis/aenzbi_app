import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/products_provider.dart';
import 'providers/cart_provider.dart';
import 'providers/auth_provider.dart';
import 'providers/order_provider.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';

class AenzbiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductsProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => OrderProvider()),
      ],
      child: MaterialApp(
        title: 'Aenzbi App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.orange,
          textTheme: TextTheme(
            headline6: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            bodyText1: TextStyle(fontSize: 16),
          ),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blue,
            textTheme: ButtonTextTheme.primary,
          ),
        ),
        home: HomeScreen(),
        routes: {
          LoginScreen.routeName: (ctx) => LoginScreen(),
          RegisterScreen.routeName: (ctx) => RegisterScreen(),
        },
      ),
    );
  }
}

void main() => runApp(AenzbiApp());
