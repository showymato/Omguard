import 'package:flutter/material.dart';

class CurrentAlertsScreen extends StatelessWidget {
  const CurrentAlertsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Current Alerts'),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildSearchBar(),
            const SizedBox(height: 20),
            _buildAlertsList(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search alerts... , ',
        hintStyle: const TextStyle(
        color: Colors.white, // Change hint text color to white
      ),
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.blueAccent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.blueAccent),
        ),
      ),
    );
  }

  Widget _buildAlertsList() {
    // Dummy data for alerts
    final alerts = [
      {'title': 'Security Alert', 'description': 'Suspicious activity detected in your area.', 'timestamp': '2 mins ago'},
      {'title': 'Weather Alert', 'description': 'Severe weather warning issued for your location.', 'timestamp': '10 mins ago'},
      {'title': 'System Alert', 'description': 'System maintenance scheduled for tonight.', 'timestamp': '30 mins ago'},
      {'title': 'Reminder', 'description': 'Don\'t forget to complete your daily check-in.', 'timestamp': '1 hour ago'},
    ];

    return Expanded(
      child: ListView.builder(
        itemCount: alerts.length,
        itemBuilder: (context, index) {
          return _buildAlertCard(
            alerts[index]['title']!,
            alerts[index]['description']!,
            alerts[index]['timestamp']!,
          );
        },
      ),
    );
  }

  Widget _buildAlertCard(String title, String description, String timestamp) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                timestamp,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
