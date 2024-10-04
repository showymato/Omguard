// import 'package:flutter/material.dart';
// import 'package:omguard_three/models/main_card_model.dart';
// import 'package:omguard_three/responsive.dart';
// import 'package:omguard_three/utils/constants.dart';

// class CustomCard extends StatelessWidget {
//   final MainCardModel mainCardModel;

//   CustomCard({super.key, required this.mainCardModel});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(!Responsive.isMobile(context) ? 15 : 10),
//       decoration: BoxDecoration(
//           color: AppConstants.clrBoxBackground,
//           boxShadow: [BoxShadow(color: Color(0xff333333), spreadRadius: 1)],
//       borderRadius: BorderRadius.all(Radius.circular(10))),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Container(
//             height: 40,
//             width: 40,
//             decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.bottomRight,
//                   stops: [0.1, 0.9],
//                   colors: [
//                     AppConstants.clrGradient1,
//                     AppConstants.clrGradient2,
//                   ],
//                 ),
//                 borderRadius: BorderRadius.all(Radius.circular(10))),
//             child: Icon(
//               mainCardModel.iconData,
//               color: AppConstants.clrWhite,
//             ),
//           ),
//           SizedBox(
//             width: 10,
//           ),
//           Text(
//             mainCardModel.title!,
//             maxLines: 1,
//             style: TextStyle(
//                 color: AppConstants.clrBigText,
//                 fontSize: Responsive.isMobile(context) ? 13 : 16),
//             overflow: TextOverflow.ellipsis,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Text(
//                 mainCardModel.count.toString(),
//                 maxLines: 1,
//                 overflow: TextOverflow.ellipsis,
//                 style: TextStyle(
//                     color: AppConstants.clrBigText,
//                     fontSize: Responsive.isMobile(context) ? 22 : 27),
//               ),
//               SizedBox(
//                 width: 10,
//               ),
//               Text(
//                 mainCardModel.subTitle!,
//                 maxLines: 1,
//                 overflow: TextOverflow.ellipsis,
//                 style: TextStyle(
//                     color: AppConstants.clrSmallText,
//                     fontSize: Responsive.isMobile(context) ? 13 : 16),
//               )
//             ],
//           ),
//           Text(
//             mainCardModel.percentage!,
//             style: TextStyle(
//               color: mainCardModel.color,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:omguard_three/models/main_card_model.dart';
import 'package:omguard_three/responsive.dart';
import 'package:omguard_three/utils/constants.dart';

class CustomCard extends StatelessWidget {
  final MainCardModel mainCardModel;
  final VoidCallback? onTap; // Optional callback for onTap

  const CustomCard({super.key, required this.mainCardModel, this.onTap}); // Added const for better performance

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Invoke the onTap callback when tapped
      child: Container(
        padding: EdgeInsets.all(Responsive.isMobile(context) ? 10 : 15),
        decoration: BoxDecoration(
          color: AppConstants.clrBoxBackground,
          boxShadow: [
            BoxShadow(
              color: const Color(0xff333333),
              spreadRadius: 1,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildIconContainer(),
            const SizedBox(height: 10), // Use height instead of width for spacing
            _buildTitleText(context),
            _buildCountAndSubtitleRow(context),
            _buildPercentageText(),
          ],
        ),
      ),
    );
  }

  Widget _buildIconContainer() {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          stops: const [0.1, 0.9], // Use const for compile-time constant
          colors: [
            AppConstants.clrGradient1,
            AppConstants.clrGradient2,
          ],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        mainCardModel.iconData,
        color: AppConstants.clrWhite,
      ),
    );
  }

  Widget _buildTitleText(BuildContext context) {
    return Text(
      mainCardModel.title!,
      maxLines: 1,
      style: TextStyle(
        color: AppConstants.clrBigText,
        fontSize: Responsive.isMobile(context) ? 13 : 16,
      ),
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildCountAndSubtitleRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          mainCardModel.count.toString(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: AppConstants.clrBigText,
            fontSize: Responsive.isMobile(context) ? 22 : 27,
          ),
        ),
        const SizedBox(width: 10), // Use const for compile-time constant
        Text(
          mainCardModel.subTitle!,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: AppConstants.clrSmallText,
            fontSize: Responsive.isMobile(context) ? 13 : 16,
          ),
        ),
      ],
    );
  }

  Widget _buildPercentageText() {
    return Text(
      mainCardModel.percentage!,
      style: TextStyle(
        color: mainCardModel.color,
      ),
    );
  }
}
