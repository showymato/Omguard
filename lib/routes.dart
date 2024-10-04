

import 'package:flutter/cupertino.dart';
import 'package:omguard_three/routes/app_routes.dart';
import 'package:omguard_three/screens/dashboard_screen.dart';

final Map<String,WidgetBuilder> routes = {
  AppRoutes.mainScreen:(context) => DashboardScreen(),
};