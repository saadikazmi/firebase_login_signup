import 'package:flutter/material.dart';
import 'package:loginuicolors/app/Veiw/login.dart';
import 'package:loginuicolors/app/Veiw/register.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:loginuicolors/app/Veiw/home.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    // home: const MyLogin(),

    initialRoute: '/login',
    getPages: [
      GetPage(name: '/register', page: () =>  MyRegister()),
      GetPage(name: '/login', page: () =>  MyLogin()),
      GetPage(name: '/home', page: () => const HomeScreen()),
    ],
  ));
}
