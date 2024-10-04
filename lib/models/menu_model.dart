import 'package:flutter/material.dart';

class MenuModel {
  IconData icon;
  String title;

  MenuModel({required this.icon, required this.title});
}

List<MenuModel> menu = [
  MenuModel(icon: Icons.dashboard, title: "Dashboard"),         // Overview of all key metrics
  MenuModel(icon: Icons.security, title: "Security Monitoring"), // Monitoring security feeds and alerts
  MenuModel(icon: Icons.person_add, title: "User Management"),   // Managing user accounts and roles
  MenuModel(icon: Icons.assignment, title: "Reports"),           // Accessing and generating reports
  MenuModel(icon: Icons.settings, title: "System Settings"),     // Configuration and settings
  MenuModel(icon: Icons.help, title: "Help & Support"),         // Access to help resources and support
];

List<MenuModel> bottomMenu = [
  MenuModel(icon: Icons.notifications, title: "Notifications"),  // Alerts and notifications
  MenuModel(icon: Icons.exit_to_app, title: "Log Out"),         // Logout functionality
];
