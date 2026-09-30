import 'package:get/get.dart';
import 'package:flutter_application_1/pages/confirm_registration_page.dart';
import 'package:flutter_application_1/pages/registration_page.dart';

class Routes {
  
  static const String confirmRegistration = '/confirmRegistration';
  static const String registration = '/registration';

  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
  ];
}
