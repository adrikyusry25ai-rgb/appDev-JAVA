import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/components/mymine_button.dart';
import 'package:flutter_application_1/components/mymine_dropdown.dart';
import 'package:flutter_application_1/components/mymine_textfield.dart';
import 'package:flutter_application_1/route.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final txtNama = TextEditingController();
    final txtAlamat = TextEditingController();
    final txtNoWa = TextEditingController();
    final txtEmail = TextEditingController();
    final jenisKelamin = RxnString(); // null = belum dipilih
    final listJenisKelamin = ['Laki-laki', 'Perempuan'];

    void kirim() {
      if (txtNama.text.isEmpty ||
          txtAlamat.text.isEmpty ||
          jenisKelamin.value == null ||
          txtNoWa.text.isEmpty ||
          txtEmail.text.isEmpty) {
        Get.snackbar("Peringatan", "Semua data wajib diisi");
        return;
      }
      if (!GetUtils.isEmail(txtEmail.text)) {
        Get.snackbar("Peringatan", "Format email tidak valid");
        return;
      }

      Get.toNamed(
        Routes.confirmRegistration,
        arguments: {
          'name': txtNama.text,
          'alamat': txtAlamat.text,
          'jenis_kelamin': jenisKelamin.value,
          'no_wa': txtNoWa.text,
          'email': txtEmail.text,
        },
      );
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 173, 219, 255),
      appBar: AppBar(title: const Text("Registration")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            MymineTextfield(
                hint: "Input nama", txtcontroller: txtNama, radius: 10),
            const SizedBox(height: 12),
            MymineTextfield(
                hint: "Input alamat", txtcontroller: txtAlamat, radius: 10),
            const SizedBox(height: 12),
            Obx(
              () => MymineDropdown(
                hint: "Pilih jenis kelamin",
                items: listJenisKelamin,
                value: jenisKelamin.value,
                radius: 10,
                onChanged: (v) => jenisKelamin.value = v,
              ),
            ),
            const SizedBox(height: 12),
            MymineTextfield(
              hint: "Input no WA",
              txtcontroller: txtNoWa,
              radius: 10,
             
            ),
            const SizedBox(height: 12),
            MymineTextfield(
                hint: "Input email", txtcontroller: txtEmail, radius: 10),
            const SizedBox(height: 20),
            MymineButton(text: "send", radius: 10, onPressed: kirim),
          ],
        ),
      ),
    );
  }
}