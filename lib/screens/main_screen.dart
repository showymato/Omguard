
// import 'package:flutter/material.dart';
// import 'package:omguard_three/army_communication/uploadscreenarmy.dart';
// import 'package:omguard_three/responsive.dart';
// import 'package:omguard_three/widgets/custom_card_grid_view.dart';
// import 'package:omguard_three/widgets/details_card.dart';
// import 'package:omguard_three/widgets/graph_map_grid_view.dart';
// import 'package:omguard_three/widgets/header.dart';

// class MainScreen extends StatelessWidget {
//   final GlobalKey<ScaffoldState> scaffoldKey;

//   const MainScreen({super.key, required this.scaffoldKey});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: MediaQuery.of(context).size.height,
//       child: Stack( // Use Stack to position the button
//         children: [
//           SingleChildScrollView(
//             child: Padding(
//               padding: EdgeInsets.symmetric(
//                   horizontal: Responsive.isMobile(context) ? 15 : 10),
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: Responsive.isMobile(context) ? 5 : 5,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: HeaderWidget(scaffoldKey: scaffoldKey),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Responsive(
//                     mobile: CustomCardGridView(
//                       crossAxisCount: MediaQuery.of(context).size.width < 650 ? 2 : 4,
//                       childAspectRatio: MediaQuery.of(context).size.width < 650 ? 1.3 : 1.1,
//                     ),
//                     tablet: CustomCardGridView(
//                       crossAxisCount: MediaQuery.of(context).size.width < 800 ? 2 : 4,
//                       childAspectRatio: MediaQuery.of(context).size.width < 800 ? 1.5 : 1.2,
//                     ),
//                     desktop: CustomCardGridView(
//                       childAspectRatio: MediaQuery.of(context).size.width < 1400 ? 1.3 : 1.5,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Responsive(
//                     mobile: GraphMapGridView(
//                       crossAxisCount: MediaQuery.of(context).size.width < 650 ? 1 : 2,
//                       childAspectRatio: MediaQuery.of(context).size.width < 650 ? 1.2 : 1,
//                     ),
//                     tablet: GraphMapGridView(
//                       crossAxisCount: 2,
//                       childAspectRatio: MediaQuery.of(context).size.width < 800 ? 1.05 : 1.27,
//                     ),
//                     desktop: GraphMapGridView(
//                       childAspectRatio: MediaQuery.of(context).size.width < 1400 ? 1.35 : 1.7,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   DetailsCard(),
//                 ],
//               ),
//             ),
//           ),
//           // Positioned button
//           Positioned(
//             bottom: 20, // Distance from the bottom
//             right: 20, // Distance from the right
//             child: FloatingActionButton(
//               onPressed: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (context) => ImageUploadScreen(),
//                   ),
//                 );
//               },
//               backgroundColor: Color.fromARGB(255, 180, 221, 255), // Set the background color of the button
//               child: Image.asset(
//                 'assets/images/armhy.png', // Replace with your PNG logo path
//                 width: 100, // Adjust width as needed
//                 height: 100, // Adjust height as needed
//                 // color: Colors.white, // Set the color of the logo to white
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }








// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:omguard_three/army_communication/uploadscreenarmy.dart';
// import 'package:omguard_three/responsive.dart';
// import 'package:omguard_three/widgets/custom_card_grid_view.dart';
// import 'package:omguard_three/widgets/details_card.dart';
// import 'package:omguard_three/widgets/graph_map_grid_view.dart';
// import 'package:omguard_three/widgets/header.dart';

// class MainScreen extends StatefulWidget {
//   final GlobalKey<ScaffoldState> scaffoldKey;

//   const MainScreen({super.key, required this.scaffoldKey});

//   @override
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   bool _isSplashVisible = true;

//   @override
//   void initState() {
//     super.initState();

//     // Set a 3-second timer to hide the splash screen and show the main content
//     Timer(const Duration(seconds: 3), () {
//       setState(() {
//         _isSplashVisible = false;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Check if splash screen should be visible
//     if (_isSplashVisible) {
//       return _buildSplashScreen(); // Show splash screen
//     } else {
//       return _buildMainContent(context); // Show the main screen after the splash
//     }
//   }

//   // Splash screen UI
//   Widget _buildSplashScreen() {
//     return Scaffold(
//       backgroundColor: Colors.black, // Dark black background for the splash
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // PNG logo in the center
//             Image.asset(
//               'assets/images/logoo.png', // Replace with your actual PNG logo path
//               width: 150, // Adjust size as needed
//               height: 150,
//             ),
//             const SizedBox(height: 20), // Spacing between logo and text
//             const Text(
//               'Omguard App', // Text below the logo
//               style: TextStyle(
//                 fontSize: 24,
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Main content of the screen
//   Widget _buildMainContent(BuildContext context) {
//     return SizedBox(
//       height: MediaQuery.of(context).size.height,
//       child: Stack(
//         children: [
//           SingleChildScrollView(
//             child: Padding(
//               padding: EdgeInsets.symmetric(
//                   horizontal: Responsive.isMobile(context) ? 15 : 10),
//               child: Column(
//                 children: [
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: HeaderWidget(scaffoldKey: widget.scaffoldKey),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Responsive(
//                     mobile: CustomCardGridView(
//                       crossAxisCount: MediaQuery.of(context).size.width < 650 ? 2 : 4,
//                       childAspectRatio: MediaQuery.of(context).size.width < 650 ? 1.3 : 1.1,
//                     ),
//                     tablet: CustomCardGridView(
//                       crossAxisCount: MediaQuery.of(context).size.width < 800 ? 2 : 4,
//                       childAspectRatio: MediaQuery.of(context).size.width < 800 ? 1.5 : 1.2,
//                     ),
//                     desktop: CustomCardGridView(
//                       childAspectRatio: MediaQuery.of(context).size.width < 1400 ? 1.3 : 1.5,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Responsive(
//                     mobile: GraphMapGridView(
//                       crossAxisCount: MediaQuery.of(context).size.width < 650 ? 1 : 2,
//                       childAspectRatio: MediaQuery.of(context).size.width < 650 ? 1.2 : 1,
//                     ),
//                     tablet: GraphMapGridView(
//                       crossAxisCount: 2,
//                       childAspectRatio: MediaQuery.of(context).size.width < 800 ? 1.05 : 1.27,
//                     ),
//                     desktop: GraphMapGridView(
//                       childAspectRatio: MediaQuery.of(context).size.width < 1400 ? 1.35 : 1.7,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                    DetailsCard(),
//                 ],
//               ),
//             ),
//           ),
//           // Positioned button
//           Positioned(
//             bottom: 20,
//             right: 20,
//             child: FloatingActionButton(
//               onPressed: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (context) =>  ImageUploadScreen(),
//                   ),
//                 );
//               },
//               backgroundColor: const Color.fromARGB(255, 180, 221, 255), // Set the background color of the button
//               child: Image.asset(
//                 'assets/images/armhy.png', // Replace with your PNG logo path
//                 width: 100, // Adjust width as needed
//                 height: 100, // Adjust height as needed
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:omguard_three/army_communication/uploadscreenarmy.dart';
// import 'package:omguard_three/responsive.dart';
// import 'package:omguard_three/widgets/custom_card_grid_view.dart';
// import 'package:omguard_three/widgets/details_card.dart';
// import 'package:omguard_three/widgets/graph_map_grid_view.dart';
// import 'package:omguard_three/widgets/header.dart';

// class MainScreen extends StatefulWidget {
//   final GlobalKey<ScaffoldState> scaffoldKey;

//   const MainScreen({super.key, required this.scaffoldKey});

//   @override
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   bool _isSplashVisible = true;

//   @override
//   void initState() {
//     super.initState();

//     // Set a 3-second timer to hide the splash screen and show the main content
//     Timer(const Duration(seconds: 3), () {
//       setState(() {
//         _isSplashVisible = false;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Check if splash screen should be visible
//     if (_isSplashVisible) {
//       return _buildSplashScreen(); // Show splash screen
//     } else {
//       return _buildMainContent(context); // Show the main screen after the splash
//     }
//   }

//   // Splash screen UI with background image
//   Widget _buildSplashScreen() {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background image covering the entire splash screen
//           Positioned.fill(
//             child: Image.asset(
//               'assets/images/back.jpeg', // Replace with your background image path
//               fit: BoxFit.cover, // Ensures the image covers the entire background
//             ),
//           ),
//           // Centered logo and text
//           Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // PNG logo in the center
//                 Image.asset(
//                   'assets/images/logoo.png', // Replace with your actual PNG logo path
//                   width: 150, // Adjust size as needed
//                   height: 150,
//                 ),
//                 const SizedBox(height: 20), // Spacing between logo and text
//                 const Text(
//                   'Omguard App', // Text below the logo
//                   style: TextStyle(
//                     fontSize: 24,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // Main content of the screen
//   Widget _buildMainContent(BuildContext context) {
//     return SizedBox(
//       height: MediaQuery.of(context).size.height,
//       child: Stack(
//         children: [
//           SingleChildScrollView(
//             child: Padding(
//               padding: EdgeInsets.symmetric(
//                   horizontal: Responsive.isMobile(context) ? 15 : 10),
//               child: Column(
//                 children: [
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: HeaderWidget(scaffoldKey: widget.scaffoldKey),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Responsive(
//                     mobile: CustomCardGridView(
//                       crossAxisCount: MediaQuery.of(context).size.width < 650 ? 2 : 4,
//                       childAspectRatio: MediaQuery.of(context).size.width < 650 ? 1.3 : 1.1,
//                     ),
//                     tablet: CustomCardGridView(
//                       crossAxisCount: MediaQuery.of(context).size.width < 800 ? 2 : 4,
//                       childAspectRatio: MediaQuery.of(context).size.width < 800 ? 1.5 : 1.2,
//                     ),
//                     desktop: CustomCardGridView(
//                       childAspectRatio: MediaQuery.of(context).size.width < 1400 ? 1.3 : 1.5,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Responsive(
//                     mobile: GraphMapGridView(
//                       crossAxisCount: MediaQuery.of(context).size.width < 650 ? 1 : 2,
//                       childAspectRatio: MediaQuery.of(context).size.width < 650 ? 1.2 : 1,
//                     ),
//                     tablet: GraphMapGridView(
//                       crossAxisCount: 2,
//                       childAspectRatio: MediaQuery.of(context).size.width < 800 ? 1.05 : 1.27,
//                     ),
//                     desktop: GraphMapGridView(
//                       childAspectRatio: MediaQuery.of(context).size.width < 1400 ? 1.35 : 1.7,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   DetailsCard(),
//                 ],
//               ),
//             ),
//           ),
//           // Positioned button
//           Positioned(
//             bottom: 20,
//             right: 20,
//             child: FloatingActionButton(
//               onPressed: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (context) => ImageUploadScreen(),
//                   ),
//                 );
//               },
//               backgroundColor: const Color.fromARGB(255, 180, 221, 255), // Set the background color of the button
//               child: Image.asset(
//                 'assets/images/armhy.png', // Replace with your PNG logo path
//                 width: 100, // Adjust width as needed
//                 height: 100, // Adjust height as needed
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'dart:async';
import 'package:flutter/material.dart';
import 'package:omguard_three/army_communication/uploadscreenarmy.dart';
import 'package:omguard_three/responsive.dart';
import 'package:omguard_three/widgets/custom_card_grid_view.dart';
import 'package:omguard_three/widgets/details_card.dart';
import 'package:omguard_three/widgets/graph_map_grid_view.dart';
import 'package:omguard_three/widgets/header.dart';

class MainScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const MainScreen({super.key, required this.scaffoldKey});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool _isSplashVisible = true;

  @override
  void initState() {
    super.initState();
    // Set a 3-second timer to hide the splash screen and show the main content
    Timer(const Duration(seconds: 3), () {
      setState(() {
        _isSplashVisible = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isSplashVisible ? _buildSplashScreen() : _buildMainContent(context);
  }

  // Splash screen UI with background image
  Widget _buildSplashScreen() {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/back.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logoo.png',
                  width: 150,
                  height: 150,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Omguard App',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Main content of the screen
  Widget _buildMainContent(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Responsive.isMobile(context) ? 15 : 10),
              child: Column(
                children: [
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: HeaderWidget(scaffoldKey: widget.scaffoldKey),
                  ),
                  const SizedBox(height: 20),
                  Responsive(
                    mobile: CustomCardGridView(
                      crossAxisCount: MediaQuery.of(context).size.width < 650 ? 2 : 4,
                      childAspectRatio: MediaQuery.of(context).size.width < 650 ? 1.3 : 1.1,
                    ),
                    tablet: CustomCardGridView(
                      crossAxisCount: MediaQuery.of(context).size.width < 800 ? 2 : 4,
                      childAspectRatio: MediaQuery.of(context).size.width < 800 ? 1.5 : 1.2,
                    ),
                    desktop: CustomCardGridView(
                      childAspectRatio: MediaQuery.of(context).size.width < 1400 ? 1.3 : 1.5,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Responsive(
                    mobile: GraphMapGridView(
                      crossAxisCount: MediaQuery.of(context).size.width < 650 ? 1 : 2,
                      childAspectRatio: MediaQuery.of(context).size.width < 650 ? 1.2 : 1,
                    ),
                    tablet: GraphMapGridView(
                      crossAxisCount: 2,
                      childAspectRatio: MediaQuery.of(context).size.width < 800 ? 1.05 : 1.27,
                    ),
                    desktop: GraphMapGridView(
                      childAspectRatio: MediaQuery.of(context).size.width < 1400 ? 1.35 : 1.7,
                    ),
                  ),
                  const SizedBox(height: 20),
                  DetailsCard(),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ImageUploadScreen()),
                );
              },
              backgroundColor: const Color.fromARGB(255, 180, 221, 255),
              child: Image.asset(
                'assets/images/armhy.png',
                width: 100,
                height: 100,
              ),
              tooltip: 'Upload Image', // Added tooltip for accessibility
            ),
          ),
        ],
      ),
    );
  }
}
