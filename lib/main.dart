import 'package:flutter/material.dart';
// import 'package:flutter_application_1/kalkulator_page.dart';
// import 'package:flutter_application_1/login_page.dart';
// import 'package:flutter_application_1/login_clone.dart';
// import 'package:flutter_application_1/pages/login_clone_fix.dart';
// import 'package:flutter_application_1/pages/kalkulator_pagest.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "belajar flutter pplg 3",
      initialRoute: Routes.registration,
      getPages: Routes.myPages,
    );
  }
}

