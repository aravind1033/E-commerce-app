import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/user.dart';

class LoginController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference userCollection;

  TextEditingController registerNameCtrl = TextEditingController();
  TextEditingController registerNumberCtrl = TextEditingController();

  @override
  void onInit() {
    userCollection = firestore.collection("users");
    super.onInit();
  }

  addUser() {
    try {
      DocumentReference doc = userCollection.doc();
      User user = User(
          id: doc.id,
          name: registerNameCtrl.text,
          number: int.parse(registerNumberCtrl.text));
      final userJson = user.toJson();
      doc.set(userJson);
      Get.snackbar("Success", "User Added Succesfully",
          colorText: Colors.green);
    } catch (e) {
      Get.snackbar("Error!", "$e", colorText: Colors.red);
      print(e);
    }
  }
}
