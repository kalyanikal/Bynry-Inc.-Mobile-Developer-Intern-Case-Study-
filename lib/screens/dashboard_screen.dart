import 'package:flutter/material.dart';
import 'login_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the Dashboard!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // New Feature Access Card
            _buildFeatureCard(
              title: 'Access New Feature',
              description: 'Explore the latest and greatest features.',
              onPressed: () {
                // Handle new feature access
                // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => NewFeatureScreen()));
              },
            ),
            const SizedBox(height: 10),

            // Bill Payment Card
            _buildFeatureCard(
              title: 'Bill Payment',
              description: 'Quickly pay your bills with just a few taps.',
              onPressed: () {
                // Handle bill payment logic
                // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => BillPaymentScreen()));
              },
            ),
            const SizedBox(height: 10),

            // Account Management Card
            _buildFeatureCard(
              title: 'Account Management',
              description: 'Manage your account settings and preferences.',
              onPressed: () {
                // Handle account management logic
                // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => AccountManagementScreen()));
              },
            ),
            const SizedBox(height: 20),

            // Logout button
            ElevatedButton(
              onPressed: () {
                // Handle logout logic
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Replacement for 'primary'
                foregroundColor: Colors.white, // Replacement for 'onPrimary'
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard({required String title, required String description, required VoidCallback onPressed}) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
