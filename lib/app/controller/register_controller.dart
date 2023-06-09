import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../Veiw/home.dart';

class RegisterController extends GetxController {
  // final email = RxString("");
  // final password = RxString("");

  final email = TextEditingController();
  final password = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void signUp() {
    if (!formKey.currentState!.validate()) return;
    formKey.currentState!.save();
    Get.focusScope!.unfocus();
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: email.text, password: password.text)
        .then((value) {
      print("new account created");
      Get.offNamed("/home");

      // Navigator.push(context, MaterialPageRoute(builder: (context) => const Homescreen())).onError((error, stackTrace) {
      // print("error ${error.toString()}");
      // });
    }).catchError((error) => print("error ${error.toString()}"));
  }
}
