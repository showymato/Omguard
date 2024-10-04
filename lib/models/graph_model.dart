import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GraphModel {
  String subTitle;
  String title;
  Color color;
  String image;

  GraphModel({
    required this.subTitle,
    required this.title,
    required this.color,
    required this.image,
  });
}

// Graph data related to media verification and detection
List<GraphModel> graphCardData = [
  GraphModel(
      title: "Deepfake Detected",
      subTitle: "1500 Alerts",
      color: Color(0xFFCE6462), // Color representing alerts
      image: 'assets/images/alert.svg'), // Placeholder for alert icon
  GraphModel(
      title: "Real-Time Verifications",
      subTitle: "3500 Media Checked",
      color: Color(0xFF4F53CE), // Color for real-time checks
      image: 'assets/images/check.svg'), // Placeholder for check icon
  GraphModel(
      title: "User Reports",
      subTitle: "1200 Reports Generated",
      color: Color(0xFFEEA468), // Color for reporting
      image: 'assets/images/report.svg'), // Placeholder for report icon
  GraphModel(
      title: "Military Usage",
      subTitle: "800 Media Verified",
      color: Color(0xFFA83CE5), // Military related color
      image: 'assets/images/military.svg'), // Placeholder for military icon
  GraphModel(
      title: "Public Safety Checks",
      subTitle: "2000 Verified during Crises",
      color: Color(0xFF3395F7), // Public safety related color
      image: 'assets/images/safety.svg'), // Placeholder for safety icon
];

// Country data related to media verification applications
List<GraphModel> countryData = [
  GraphModel(
      title: "USA",
      subTitle: "750 Media Checks",
      color: Color(0xFFCE6462), // Alert color for USA
      image: 'assets/images/us.svg'),
  GraphModel(
      title: "UK",
      subTitle: "500 Media Checks",
      color: Color(0xFF4F53CE), // Check color for UK
      image: 'assets/images/gb.svg'),
  GraphModel(
      title: "India",
      subTitle: "1200 Media Checks",
      color: Color(0xFFEEA468), // Reporting color for India
      image: 'assets/images/in.svg'),
  GraphModel(
      title: "Japan",
      subTitle: "300 Media Checks",
      color: Color(0xFFA83CE5), // Military related color for Japan
      image: 'assets/images/jp.svg'),
  GraphModel(
      title: "Indonesia",
      subTitle: "900 Media Checks",
      color: Color(0xFF3395F7), // Public safety related color for Indonesia
      image: 'assets/images/id.svg'),
];
