import 'package:flutter/material.dart';
import 'package:omguard_three/models/bottom_card_model.dart';
import 'package:omguard_three/models/main_card_model.dart';
import 'package:omguard_three/responsive.dart';
import 'package:omguard_three/widgets/chart_card.dart';
import 'package:omguard_three/widgets/custom_card.dart';

class GraphMapGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;

  GraphMapGridView(
      {super.key, this.childAspectRatio = 1.5, this.crossAxisCount = 2});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: bottomCard.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: !Responsive.isMobile(context) ? 15 : 12,
        mainAxisSpacing: 12.0,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) =>
          ChartCard(bottomCardModel: bottomCard[index]),
    );
  }
}
