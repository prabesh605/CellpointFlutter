import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:web_app_new/services/firebase_services.dart';
import 'package:file_picker/file_picker.dart';

class ProfileController extends GetxController {
  late QueryDocumentSnapshot snapshotData;
  var profileImgPath = ''.obs;
  var profileImageLink = '';
  var isloading = false.obs;
  RxList<String> imageUrls = <String>[].obs;

  RxList<QueryDocumentSnapshot> docs = <QueryDocumentSnapshot>[].obs;

  pickImage(context) async {
    try {
      FilePickerResult? img = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpg', 'jpeg', 'png', 'gif', 'bmp'],
      );
      if (img != null && img.files.isNotEmpty) {
        Uint8List? filePath = img.files.single.bytes;

        if (filePath!.isNotEmpty) {
          profileImgPath.value = base64Encode(filePath);
        } else {
          printError(info: "File Path error");
        }
      }
    } catch (e) {
      print(e);
    }
  }

  uploadImage() async {
    try {
      var filename = DateTime.now().millisecondsSinceEpoch.toString();
      var destination = 'images/$filename';
      Reference ref = FirebaseStorage.instance.ref().child(destination);

      // Check the platform and use the appropriate method
      if (kIsWeb) {
        // If running on the web, convert base64 to Uint8List before uploading
        Uint8List bytes = base64Decode(profileImgPath.value);

        // Explicitly set content type for image on the web
        var metadata = SettableMetadata(contentType: 'image/jpeg');

        await ref.putData(bytes, metadata);
      } else {
        // If running on other platforms, use putFile
        await ref.putFile(File(profileImgPath.value));
      }

      // Get the download URL
      profileImageLink = await ref.getDownloadURL();

      // Add to Firebase collection
      await firestore.collection("images").add({'url': profileImageLink});
    } catch (e) {
      print("Error uploading image: $e");
    }
  }

  deleteImage(
    documentId,
  ) async {
    await firestore.collection("images").doc(documentId).delete();
  }

  deletImageFromStorage(imageLink) async {
    if (imageLink != null) {
      await storage.refFromURL(imageLink).delete();
    }
  }

  Future<void> fetchImages() async {
    try {
      var newImages = await ImageServices.getFirstImage();
      imageUrls
          .assignAll(newImages.docs.map<String>((doc) => doc['url'] as String));
      update();
    } catch (e) {
      print("Error fetching images: $e");
    }
  }
}
