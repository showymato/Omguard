import 'package:flutter/material.dart';
import 'package:omguard_three/detection/TeachableMachinePage.dart';
import 'package:omguard_three/detection/app.dart';
import 'package:omguard_three/utils/constants.dart';

class CircularIcon extends StatelessWidget {

  IconData iconData;

  CircularIcon({super.key,required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(60)),
          color: AppConstants.clrBoxBackground,
          boxShadow: [
            BoxShadow(
                color: Color(0xFF333333),spreadRadius: 1
            )
          ]
      ),
      child: IconButton(
  icon: Icon(
    iconData,
  ),
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyHomePage(),
      ),
    );
  },
),

    );
  }
}
