import 'package:flutter_application_1/pages/detail_produk_page.dart';
import 'package:flutter_application_1/pages/list_produk_page.dart';
import 'package:flutter_application_1/pages/main_menu_page.dart';
import 'package:flutter_application_1/pages/menu_drawer_page.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/pages/confirm_registration_page.dart';
import 'package:flutter_application_1/pages/registration_page.dart';

class Routes {
  
  static const String confirmRegistration = '/confirmRegistration';
  static const String registration = '/registration';
  static const String listProduk = '/listProduk';
  static const String detailProduk = '/detailProduk';
  static const String mainMenu = '/mainMenu';
  static const String main = '/main';
  static const String menuDrawerpage = '/menuDrawerpage';
  static const String home = '/home';
  static const String history = '/history';
  static const String profile = '/profile';


  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
    GetPage(name: listProduk, page: () => ListProdukPage()),
    GetPage(name: detailProduk, page: () => DetailProdukPage()),
    GetPage(name: menuDrawerpage, page: () => MenuDrawerPage())
  ];
}
