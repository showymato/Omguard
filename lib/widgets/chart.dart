import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:omguard_three/responsive.dart';
import 'package:omguard_three/utils/constants.dart';

class Chart extends StatelessWidget {
  Chart({super.key});

  List<PieChartSectionData> paiChartSelectionData = [
    PieChartSectionData(
      color: Color(0xFFCE6462),
      value: 20,
      showTitle: false,
      radius: 22,
    ),
    PieChartSectionData(
      color: Color(0xFF4F53CE),
      value: 10,
      showTitle: false,
      radius: 19,
    ),
    PieChartSectionData(
      color: Color(0xFFEEA468),
      value: 15,
      showTitle: false,
      radius: 16,
    ),
    PieChartSectionData(
      color: Color(0xFFA83CE5),
      value: 25,
      showTitle: false,
      radius: 25,
    ),
    PieChartSectionData(
      color: Color(0xFF3395F7),
      value: 25,
      showTitle: false,
      radius: 13,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150, // Decreased height for a smaller chart
      width: 150, // Added width to make the chart smaller
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight, // Align chart to the right
            child: PieChart(PieChartData(
                sectionsSpace: 0,
                centerSpaceRadius: 60, // Slightly smaller radius
                startDegreeOffset: -90,
                sections: paiChartSelectionData)),
          ),
          Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 16,
              ),
              Text(
                "4300",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    height: 0.5),
              ),
              SizedBox(
                height: 8,
              ),
              Text("Alerts",style: TextStyle(color: AppConstants.clrSmallText),)
            ],
          ))
        ],
      ),
    );
  }
}
