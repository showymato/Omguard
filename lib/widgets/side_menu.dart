// import 'package:flutter/material.dart';
// import 'package:omguard_three/models/menu_model.dart';
// import 'package:omguard_three/utils/constants.dart';
// import 'package:omguard_three/widgets/gradient_icon.dart';

// class SideMenu extends StatefulWidget {

//   final GlobalKey<ScaffoldState> scaffoldKey;

//   SideMenu({super.key,required this.scaffoldKey});

//   @override
//   State<SideMenu> createState() => _SideMenuState();
// }

// class _SideMenuState extends State<SideMenu> {
//   int selected = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height,
//       width: 200,
//       decoration: BoxDecoration(
//           border: Border(
//             right: BorderSide(color: Color(0xFF202529), width: 1),
//           ),
//           color: AppConstants.clrBoxBackground),
//       child: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           children: [
//             Expanded(
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 40,
//                   ),
//                   Row(
//                     children: [
//                       GradientIcon(icon: Icons.circle, size: 50),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text(
//                             "Karan",
//                             style: TextStyle(
//                                 color: AppConstants.clrBigText, fontSize: 20),
//                           ),
//                           Text(
//                             "OmSwasti",
//                             style: TextStyle(
//                                 color: AppConstants.clrBigText, fontSize: 10),
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 40,
//                   ),
//                   for (var i = 0; i < menu.length; i++)
//                     Container(
//                       padding: EdgeInsets.symmetric(horizontal: 13,vertical: 7),
//                       child: InkWell(
//                         onTap: () {
//                           setState(() {
//                             selected = i;
//                           });
//                           widget.scaffoldKey.currentState!.closeDrawer();
//                         },
//                         child: Row(
//                           children: [
//                             selected == i
//                                 ? GradientIcon(icon: menu[i].icon, size: 20)
//                                 : Icon(
//                                     menu[i].icon,
//                                     size: 20,
//                                     color: AppConstants.clrSmallText,
//                                   ),
//                             SizedBox(width: 10,),
//                             Text(
//                               menu[i].title,
//                               style: selected == i
//                                   ? TextStyle(
//                                       fontSize: 14,
//                                       foreground: Paint()
//                                         ..shader = LinearGradient(colors: [
//                                           AppConstants.clrGradient1,
//                                           AppConstants.clrGradient2,
//                                         ]).createShader(Rect.fromLTWH(0, 0, 200, 70)))
//                                   : TextStyle(
//                                       fontSize: 14,
//                                       color: AppConstants.clrSmallText,
//                                       fontWeight: FontWeight.normal),
//                             )
//                           ],
//                         ),
//                       ),
//                     )
//                 ],
//               ),
//             ),
//             for (var i = 0; i < bottomMenu.length; i++)
//               Container(
//                 padding: EdgeInsets.symmetric(horizontal: 13,vertical: 7),
//                 child: Row(
//                   children: [
//                     selected == i
//                         ? GradientIcon(icon: bottomMenu[i].icon, size: 20)
//                         : Icon(
//                       bottomMenu[i].icon,
//                       size: 20,
//                       color: AppConstants.clrSmallText,
//                     ),
//                     SizedBox(width: 10,),
//                     Text(
//                       bottomMenu[i].title,
//                       style: selected == i
//                           ? TextStyle(
//                           fontSize: 14,
//                           foreground: Paint()
//                             ..shader = LinearGradient(colors: [
//                               AppConstants.clrGradient1,
//                               AppConstants.clrGradient2,
//                             ]).createShader(Rect.fromLTWH(0, 0, 200, 70)))
//                           : TextStyle(
//                           fontSize: 14,
//                           color: AppConstants.clrSmallText,
//                           fontWeight: FontWeight.normal),
//                     )
//                   ],
//                 ),
//               )
//           ],
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:omguard_three/models/menu_model.dart';
import 'package:omguard_three/utils/constants.dart';
import 'package:omguard_three/widgets/gradient_icon.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: 250, // Increased width for better visibility
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppConstants.clrGradient1.withOpacity(0.9), // Gradient for background
            AppConstants.clrGradient2.withOpacity(0.9),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                GradientIcon(icon: Icons.circle, size: 50),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Karan",
                      style: TextStyle(
                        color: Colors.white, // Changed to white for contrast
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "OmSwasti",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 40),
            Expanded(
              child: ListView.builder(
                itemCount: menu.length,
                itemBuilder: (context, index) {
                  return _buildMenuItem(index);
                },
              ),
            ),
            SizedBox(height: 20),
            for (var i = 0; i < bottomMenu.length; i++)
              _buildBottomMenuItem(i),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(int index) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: InkWell(
        onTap: () {
          setState(() {
            selected = index;
          });
          widget.scaffoldKey.currentState!.closeDrawer();
        },
        child: Row(
          children: [
            selected == index
                ? GradientIcon(icon: menu[index].icon, size: 24)
                : Icon(
                    menu[index].icon,
                    size: 24,
                    color: Colors.white70,
                  ),
            SizedBox(width: 15),
            Text(
              menu[index].title,
              style: selected == index
                  ? TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..shader = LinearGradient(
                          colors: [
                            AppConstants.clrGradient1,
                            AppConstants.clrGradient2,
                          ],
                        ).createShader(Rect.fromLTWH(0, 0, 200, 70)),
                    )
                  : TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomMenuItem(int index) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          selected == index
              ? GradientIcon(icon: bottomMenu[index].icon, size: 24)
              : Icon(
                  bottomMenu[index].icon,
                  size: 24,
                  color: Colors.white70,
                ),
          SizedBox(width: 15),
          Text(
            bottomMenu[index].title,
            style: selected == index
                ? TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..shader = LinearGradient(
                        colors: [
                          AppConstants.clrGradient1,
                          AppConstants.clrGradient2,
                        ],
                      ).createShader(Rect.fromLTWH(0, 0, 200, 70)),
                  )
                : TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
          ),
        ],
      ),
    );
  }
}
