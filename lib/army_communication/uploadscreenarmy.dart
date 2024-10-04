
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:http/http.dart' as http;

// class ImageUploadScreen extends StatefulWidget {
//   @override
//   _ImageUploadScreenState createState() => _ImageUploadScreenState();
// }

// class _ImageUploadScreenState extends State<ImageUploadScreen> {
//   File? _image;

//   Future<void> _pickImage() async {
//     final picker = ImagePicker();
//     final pickedFile = await picker.getImage(source: ImageSource.gallery);

//     if (pickedFile != null) {
//       setState(() {
//         _image = File(pickedFile.path);
//       });
//     }
//   }

//   Future<void> _uploadImage() async {
//     if (_image == null) return;

//     const apiKey = 'e93b6004.d678eeaef7ca472898a4c12676f09fad';

//     final request = http.MultipartRequest(
//       'POST',
//       Uri.parse('https://node.lighthouse.storage/api/v0/add'),
//     );

//     request.headers['Authorization'] = 'Bearer $apiKey';
//     request.files.add(
//       await http.MultipartFile.fromPath('file', _image!.path),
//     );

//     try {
//       final response = await request.send();
//       if (response.statusCode == 200) {
//         final responseData = await http.Response.fromStream(response);
//         print('Upload successful! Response: ${responseData.body}');
//       } else {
//         print('Upload failed with status: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('Error uploading file: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('CrypticWall',
//         style: TextStyle(
//           color: const Color.fromARGB(255, 255, 255, 255)
//         ),
//         ),
//         backgroundColor: const Color.fromARGB(0, 145, 145, 145), // Make the AppBar transparent
//         elevation: 0, // Remove the shadow of the AppBar
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/images/back.jpeg'), // Set your background image here
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Center(
//           child: Container(
//             decoration: BoxDecoration(
//               color: Colors.black.withOpacity(0.7), // Background color with opacity
//               borderRadius: BorderRadius.circular(20),
//             ),
//             padding: EdgeInsets.all(20),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 _image == null
//                     ? Text(
//                         'No image selected.',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       )
//                     : ClipRRect(
//                         borderRadius: BorderRadius.circular(10),
//                         child: Image.file(
//                           _image!,
//                           height: 200,
//                           width: 200,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                 SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: _pickImage,
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.blueAccent, // Button color
//                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   child: Text(
//                     'Pick Image from Gallery',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: _uploadImage,
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.greenAccent, // Button color
//                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   child: Text(
//                     'Upload Image',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }




// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:http/http.dart' as http;

// class ImageUploadScreen extends StatefulWidget {
//   @override
//   _ImageUploadScreenState createState() => _ImageUploadScreenState();
// }

// class _ImageUploadScreenState extends State<ImageUploadScreen> {
//   File? _image;

//   Future<void> _pickImage() async {
//     final picker = ImagePicker();
//     final pickedFile = await picker.getImage(source: ImageSource.gallery);

//     if (pickedFile != null) {
//       setState(() {
//         _image = File(pickedFile.path);
//       });
//     }
//   }

//   Future<void> _uploadImage() async {
//     if (_image == null) return;

//     const apiKey = 'e93b6004.d678eeaef7ca472898a4c12676f09fad';

//     final request = http.MultipartRequest(
//       'POST',
//       Uri.parse('https://node.lighthouse.storage/api/v0/add'),
//     );

//     request.headers['Authorization'] = 'Bearer $apiKey';
//     request.files.add(
//       await http.MultipartFile.fromPath('file', _image!.path),
//     );

//     try {
//       final response = await request.send();
//       if (response.statusCode == 200) {
//         final responseData = await http.Response.fromStream(response);
//         print('Upload successful! Response: ${responseData.body}');
//       } else {
//         print('Upload failed with status: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('Error uploading file: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'CrypticWall',
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: const Color.fromARGB(255, 0, 24, 43), // Light and soothing background color
//         elevation: 4, // Slight elevation for shadow effect
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Color.fromARGB(255, 14, 61, 83),Color.fromARGB(255, 24, 103, 140),Color.fromARGB(255, 96, 165, 194), Colors.white], // Gradient background
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Center(
//           child: Container(
//             decoration: BoxDecoration(
//               color: Colors.white.withOpacity(0.9), // Light background with opacity
//               borderRadius: BorderRadius.circular(20),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.3),
//                   spreadRadius: 5,
//                   blurRadius: 10,
//                   offset: Offset(0, 3), // changes position of shadow
//                 ),
//               ],
//             ),
//             padding: EdgeInsets.all(20),
//             child:Column(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//     Container(
//       decoration: BoxDecoration(
        // image: DecorationImage(
        //   image: AssetImage('assets/images/back.jpeg'), // Replace with your image path
        //   fit: BoxFit.cover,
        //   colorFilter: ColorFilter.mode(
        //     const Color.fromARGB(255, 103, 103, 103).withOpacity(0.5), // Adjust opacity here
        //     BlendMode.darken, // You can change this to other BlendModes if desired
        //   ),
        // ),
//       ),
//       child: Opacity(
//         opacity: 0.5, // Adjust the overall opacity
//         child: Container(
//           // Add padding or other styles if needed
//           padding: EdgeInsets.all(20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               _image == null
//                   ? Text(
//                       'No image selected.',
//                       style: TextStyle(
//                         color: Colors.white, // Adjust text color for visibility
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     )
//                   : ClipRRect(
//                       borderRadius: BorderRadius.circular(10),
//                       child: Image.file(
//                         _image!,
//                         height: 200,
//                         width: 200,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: _pickImage,
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.lightBlue,
//                   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   textStyle: TextStyle(fontSize: 18),
//                 ),
//                 child: Text('Pick Image from Gallery'),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: _uploadImage,
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.greenAccent,
//                   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   textStyle: TextStyle(fontSize: 18),
//                 ),
//                 child: Text('Upload Image'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   ],
// ),

//           ),
//         ),
//       ),
//     );
//   }
// }


import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

class ImageUploadScreen extends StatefulWidget {
  @override
  _ImageUploadScreenState createState() => _ImageUploadScreenState();
}

class _ImageUploadScreenState extends State<ImageUploadScreen> {
  File? _image;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> _uploadImage() async {
    if (_image == null) return;

    const apiKey = 'e93b6004.d678eeaef7ca472898a4c12676f09fad';

    final request = http.MultipartRequest(
      'POST',
      Uri.parse('https://node.lighthouse.storage/api/v0/add'),
    );

    request.headers['Authorization'] = 'Bearer $apiKey';
    request.files.add(
      await http.MultipartFile.fromPath('file', _image!.path),
    );

    try {
      final response = await request.send();
      if (response.statusCode == 200) {
        final responseData = await http.Response.fromStream(response);
        print('Upload successful! Response: ${responseData.body}');
      } else {
        print('Upload failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error uploading file: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CrypticWall',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 24, 43), // Light and soothing background color
        elevation: 4, // Slight elevation for shadow effect
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back.jpeg'), // Replace with your image path
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5), // Adjust opacity here
              BlendMode.darken,
            ),
          ),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/back.jpeg'), // Replace with your image path
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              const Color.fromARGB(255, 163, 163, 163).withOpacity(0.5), // Adjust opacity here
              BlendMode.darken,
            ),
          ),
              color: Colors.white.withOpacity(0.9), // Light background with opacity
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _image == null
                    ? Text(
                        'No image selected.',
                        style: TextStyle(
                          color: Colors.black, // Adjust text color for visibility
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.file(
                          _image!,
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _pickImage,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlue,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                  child: Text('Pick Image from Gallery'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _uploadImage,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.greenAccent,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                  child: Text('Upload Image'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
