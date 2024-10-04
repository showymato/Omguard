// import 'package:flutter/material.dart';
// import 'package:omguard_three/models/main_card_model.dart';
// import 'package:omguard_three/responsive.dart';
// import 'package:omguard_three/widgets/custom_card.dart';

// class CustomCardGridView extends StatelessWidget {
//   final int crossAxisCount;
//   final double childAspectRatio;

//   CustomCardGridView(
//       {super.key, this.childAspectRatio = 1, this.crossAxisCount = 4});

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       itemCount: myCards.length,
//       shrinkWrap: true,
//       physics: NeverScrollableScrollPhysics(),
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: crossAxisCount,
//         crossAxisSpacing: !Responsive.isMobile(context) ? 15 : 12,
//         mainAxisSpacing: 12.0,
//         childAspectRatio: childAspectRatio,
//       ),
//       itemBuilder: (context, index) =>
//           CustomCard(mainCardModel: myCards[index]),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:omguard_three/models/main_card_model.dart';
// import 'package:omguard_three/responsive.dart';
// import 'package:omguard_three/widgets/custom_card.dart';
// import 'package:omguard_three/widgets/srcc/demo.dart'; // Ensure this import matches your project structure



// class CustomCardGridView extends StatelessWidget {
//   final int crossAxisCount;
//   final double childAspectRatio;

//   CustomCardGridView({super.key, this.childAspectRatio = 1, this.crossAxisCount = 4});

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       itemCount: myCards.length,
//       shrinkWrap: true,
//       physics: NeverScrollableScrollPhysics(),
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: crossAxisCount,
//         crossAxisSpacing: !Responsive.isMobile(context) ? 15 : 12,
//         mainAxisSpacing: 12.0,
//         childAspectRatio: childAspectRatio,
//       ),
//       itemBuilder: (context, index) {
//         return CustomCard(
//           mainCardModel: myCards[index],
//           onTap: () {
//             _onCardTap(context, index);
//           },
//         );
//       },
//     );
//   }

//   void _onCardTap(BuildContext context, int index) {
//     // Define the screens for each card
//     Widget destinationScreen; // Removed nullable Widget?

//     switch (index) {
//       case 0:
//         destinationScreen = CurrentAlertsScreen(); // Ensure this screen is defined
//         break;
//       case 1:
//         destinationScreen = PendingTasksScreen(); // Ensure this screen is defined
//         break;
//       case 2:
//         destinationScreen = TotalUsersScreen(); // Ensure this screen is defined
//         break;
//       case 3:
//         destinationScreen = NewReportsScreen(); // Ensure this screen is defined
//         break;
//       default:
//         return; // Do nothing if index is out of bounds
//     }

//     // Navigate to the destination screen
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => destinationScreen),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:omguard_three/models/main_card_model.dart';
import 'package:omguard_three/responsive.dart';
import 'package:omguard_three/widgets/custom_card.dart';
import 'package:omguard_three/widgets/srcc/current_Alerts.dart';
import 'package:omguard_three/widgets/srcc/demo.dart';
import 'package:omguard_three/widgets/srcc/new_report.dart'; // Ensure this import matches your project structure

class CustomCardGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;

  CustomCardGridView({super.key, this.childAspectRatio = 1, this.crossAxisCount = 4});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: myCards.length, // Ensure myCards is defined
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: !Responsive.isMobile(context) ? 15 : 12,
        mainAxisSpacing: 12.0,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) {
        return CustomCard(
          mainCardModel: myCards[index],
          onTap: () {
            _onCardTap(context, index);
          },
        );
      },
    );
  }

  void _onCardTap(BuildContext context, int index) {
    // Define the screens for each card
    Widget destinationScreen; // Non-nullable Widget

    switch (index) {
      case 0:
        destinationScreen = CurrentAlertsScreen(); // Ensure this screen is defined
        break;
      case 1:
        destinationScreen = PendingTasksScreen(); // Ensure this screen is defined
        break;
      case 2:
        destinationScreen = TotalUsersScreen(); // Ensure this screen is defined
        break;
      case 3:
        destinationScreen = ReportScreen(); // Ensure this screen is defined
        break;
      default:
        return; // Do nothing if index is out of bounds
    }

    // Navigate to the destination screen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => destinationScreen),
    );
  }
}
