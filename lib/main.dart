import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/detail_produk_page.dart';
import 'package:flutter_application_1/pages/list_produk_page.dart';
import 'package:flutter_application_1/pages/login_clone_fix.dart';
import 'package:flutter_application_1/pages/menu_drawer_page.dart';
// import 'package:flutter_application_1/kalkulator_page.dart';
// import 'package:flutter_application_1/login_page.dart';
// import 'package:flutter_application_1/login_clone.dart';
import 'package:flutter_application_1/pages/login_clone_fix.dart';
// import 'package:flutter_application_1/pages/kalkulator_pagest.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "my produk",
      initialRoute: Routes.loginPageCloneFix,
      getPages: Routes.myPages,
    );
  }
}

