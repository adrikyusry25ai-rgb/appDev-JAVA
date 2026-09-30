import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/confirm_registration_controller.dart';
import 'package:get/get.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});

  Widget _item(IconData icon, String label, String value) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(label, style: const TextStyle(fontSize: 13, color: Colors.grey)),
      subtitle: Text(
        value,
        style: const TextStyle(fontSize: 17, color: Colors.black87),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmRegistrationController());

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 105, 203, 252),
      appBar: AppBar(
        title: const Text("Confirm Registration"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Periksa kembali data kamu",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  _item(Icons.person, "Nama", controller.nama),
                  const Divider(height: 1),
                  _item(Icons.home, "Alamat", controller.alamat),
                  const Divider(height: 1),
                  _item(Icons.wc, "Jenis Kelamin", controller.jenisKelamin),
                  const Divider(height: 1),
                  _item(Icons.phone, "No WhatsApp", controller.noWa),
                  const Divider(height: 1),
                  _item(Icons.email, "Email", controller.email),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () => Get.back(),
                child: const Text("Oke"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}