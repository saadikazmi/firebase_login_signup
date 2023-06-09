import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// void main() => runApp(const HomeScreen());

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Petsify"),
        actions: [
          IconButton(icon:  Icon(Icons.logout,), onPressed: () {
            FirebaseAuth.instance.signOut();
            Get.offNamed('/login');
          },),
        ],
      ),
      body: Center(child: Row(children: [Column(children: const [])])),
    );
  }
}
