import 'package:flutter/material.dart';


class PendingTasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pending Tasks")),
      body: Center(child: Text("Details about pending tasks")),
    );
  }
}

class TotalUsersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Total Users")),
      body: Center(child: Text("Details about total users")),
    );
  }
}

class NewReportsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("New Reports")),
      body: Center(child: Text("Details about new reports")),
    );
  }
}
