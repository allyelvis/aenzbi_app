import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _submit(BuildContext context) {
    Provider.of<AuthProvider>(context, listen: false).login(
      _emailController.text,
      _passwordController.text,
    );
    // Navigate to home screen after login
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              controller: _passwordController,
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _submit(context),
              child: Text('Login'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RegisterScreen.routeName);
              },
              child: Text('No account? Register now!'),
            ),
          ],
        ),
      ),
    );
  }
}
