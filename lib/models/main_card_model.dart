import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainCardModel {
  final IconData iconData;
  final String? title, subTitle, count;
  final String? percentage;
  final Color? color;

  MainCardModel({
    required this.iconData,
    required this.title,
    required this.subTitle,
    required this.count,
    required this.percentage,
    required this.color,
  });
}

List<MainCardModel> myCards = [
  MainCardModel(
    title: "Current Alerts", // Updated title
    iconData: FontAwesomeIcons.bell, // Updated icon for alerts
    subTitle: "Alerts", // Updated subtitle
    count: "120", // Updated count for current alerts
    percentage: "+15%", // Updated percentage change
    color: Colors.red, // Keep red for alerts
  ),
  MainCardModel(
    title: "Pending Tasks", // Updated title
    subTitle: "Tasks", // Updated subtitle
    iconData: FontAwesomeIcons.tasks, // Updated icon for tasks
    count: "34", // Updated count for pending tasks
    percentage: "-5%", // Updated percentage change
    color: Colors.orange, // Use orange for pending tasks
  ),
  MainCardModel(
    title: "Total Users", // Updated title
    subTitle: "Users", // Updated subtitle
    iconData: CupertinoIcons.group, // Keep the group icon
    count: "4300", // Updated count for total users
    percentage: "+10%", // Updated percentage change
    color: Colors.green, // Keep green for positive growth
  ),
  MainCardModel(
    title: "New Reports", // Updated title
    subTitle: "Reports", // Updated subtitle
    iconData: Icons.report, // Updated icon for reports
    count: "15", // Updated count for new reports
    percentage: "+3%", // Updated percentage change
    color: Colors.green, // Keep green for positive growth
  ),
];
