import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../Veiw/home.dart';

class LoginController extends GetxController {
  // final email = RxString("");
  // final password = RxString("");

  final email = TextEditingController();
  final password = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void signIn() {
    if (!formKey.currentState!.validate()) return;
    formKey.currentState!.save();
    Get.focusScope!.unfocus();
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
        email: email.text, password: password.text)
        .then((value) {
      print("new account created");
      Get.offNamed("/home");

    }).catchError((error) => print("error ${error.toString()}"));
  }
}
