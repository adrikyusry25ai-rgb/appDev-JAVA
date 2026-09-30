import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/mymine_button.dart';
import 'package:flutter_application_1/components/mymine_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController txtUsername = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: Column(
        children: [
          Container(margin: EdgeInsets.all(16), child: MymineTextfield(hint: "input username", txtcontroller: txtUsername, radius: 25)),
          Container(margin: EdgeInsets.all(16), child: MymineTextfield(hint: "input password", txtcontroller: TextEditingController(), radius: 25)),
          Container(margin: EdgeInsets.all(16), child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MymineButton(text: "Login", onPressed: () {}, radius: 25),
              MymineButton(text: "Register", onPressed: () {}, radius: 25),
            ],
          )),
        ],
      ), 
    );
  }
}
