import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/mymine_button.dart';
import 'package:flutter_application_1/components/mymine_textfield.dart';
import 'package:flutter_application_1/controller/login_controller.dart';
import 'package:get/get.dart';



class LoginPageCloneFix extends StatelessWidget {
  LoginPageCloneFix({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
       

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Row(
                children: [
                  const Text(
                    'Linked',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0A66C2),
                    ),
                  ),
                  const SizedBox(width: 2),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    decoration: BoxDecoration(
                      color: const Color(0xFF0A66C2),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      'in',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Stay updated on your professional world',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 24),
              MymineTextfield(
                hint: 'username',
                txtcontroller: controller.txtUsername,
                radius: 4,
              ),
              const SizedBox(height: 16),
              MymineTextfield(
                hint: 'Password',
                txtcontroller: controller.txtPassword,
                radius: 4,
                obscureText: true,
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: 
                
                Obx(()=>controller.isLoading.value ? Center(
                  child: CircularProgressIndicator(),
                ) : MymineButton(
                  text: 'Sign in',
                  radius: 25,
                  color: const Color.fromARGB(255, 197, 208, 217),
                  onPressed: () {
                    controller.login();
                  },
                ),
              )     
            ),
              const SizedBox(height: 24),
              // Link Daftar
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("New to linkedin? "),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Join now",
                      style: TextStyle(
                        color: Color(0xFF0A66C2),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}