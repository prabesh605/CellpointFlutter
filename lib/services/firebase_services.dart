import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;
FirebaseStorage storage = FirebaseStorage.instance;
FirebaseAuth auth = FirebaseAuth.instance;

class ImageServices {
  static getImage() {
    return firestore.collection('images').get();
  }

  static getSecondImage() {
    return firestore.collection('secondslider').get();
  }

  static getFirstImage() {
    return firestore.collection('firstslider').get();
  }
}
