// import 'dart:io';

// import 'package:flutter/material.dart';

// class AdminServices {
//   void sellProduct({
//     required BuildContext context,
//     required String name,
//     required String description,
//     required double price,
//     required double quantity,
//     required String category,
//     required List<File> images,
//   }) async {
//     final userProvider = Provider.of<UserProvider>(context, listen: false);

//     try {
//       final cloudinary = CloudinaryPublic('denfgaxvg', 'uszbstnu');
//       List<String> imageUrls = [];

//       for (int i = 0; i < images.length; i++) {
//         CloudinaryResponse res = await cloudinary.uploadFile(
//           CloudinaryFile.fromFile(images[i].path, folder: name),
//         );
//         imageUrls.add(res.secureUrl);
//       }
         
//   }
// }