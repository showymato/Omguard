import 'package:flutter/material.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Report Issue'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Submit a Report',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            _buildReportForm(),
            const SizedBox(height: 20),
            _buildDownloadButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildReportForm() {
    return Form(
      child: Column(
        children: [
          _buildTextField(
            label: 'Description',
            hint: 'Describe the issue or suspicious content',
            maxLines: 5,
          ),
          const SizedBox(height: 16),
          _buildTextField(
            label: 'Media Link',
            hint: 'Provide link to the media (if applicable)',
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Handle report submission logic here
            },
            child: const Text('Submit Report'),
            style: ElevatedButton.styleFrom(
              primary: Colors.blueAccent, // Button color
              padding: const EdgeInsets.symmetric(vertical: 16),
              textStyle: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({required String label, required String hint, int maxLines = 1}) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.blueAccent),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }

  Widget _buildDownloadButton() {
    return ElevatedButton(
      onPressed: () {
        // Handle report download logic here
      },
      child: const Text('Download Forensic Report'),
      style: ElevatedButton.styleFrom(
        primary: Colors.green, // Change color if needed
        padding: const EdgeInsets.symmetric(vertical: 16),
        textStyle: const TextStyle(fontSize: 16),
      ),
    );
  }
}
