// lib/screens/login_screen.dart
import 'package:flutter/material.dart';
import 'dashboard_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  // Add a GlobalKey to the form for input validation
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Add TextEditingController for username and password fields
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.indigo, // Change app bar color
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Your login widgets here
                TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a valid username';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                // Password field with obscure text
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a valid password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                // Login button with advanced animation and design
                ElevatedButton(
                  onPressed: () {
                    // Validate the form
                    if (_formKey.currentState?.validate() ?? false) {
                      // Handle login logic with advanced animation
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DashboardScreen(),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple, // Change button color
                    foregroundColor: Colors.white, // Change text color
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  ),
                  child:const  Hero(
                    tag: 'loginButton',
                    child: Material(
                      color: Colors.transparent,
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
