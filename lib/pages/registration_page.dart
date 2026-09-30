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

    // no WA hanya angka: huruf/simbol yang diketik langsung dihapus
    txtNoWa.addListener(() {
      final digits = txtNoWa.text.replaceAll(RegExp(r'[^0-9]'), '');
      if (digits != txtNoWa.text) {
        txtNoWa.value = TextEditingValue(
          text: digits,
          selection: TextSelection.collapsed(offset: digits.length),
        );
      }
    });

    void kirim() {
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

    // label kecil di atas setiap field
    Widget label(String text) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 6),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF3F6FB),
      appBar: AppBar(
        title: const Text("Registration"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ConstrainedBox(
            // supaya tidak terlalu lebar saat dibuka di browser
            constraints: const BoxConstraints(maxWidth: 500),
            child: Column(
              children: [
                // ===== Header =====
                const CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person_add, size: 32, color: Colors.white),
                ),
                const SizedBox(height: 12),
                const Text(
                  "Form Pendaftaran",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  "Lengkapi data diri kamu di bawah ini",
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                const SizedBox(height: 24),

                // ===== Kartu form =====
                // Theme ini yang mengatur tampilan field & tombol
                // tanpa mengubah file komponen
                Theme(
                  data: Theme.of(context).copyWith(
                    inputDecorationTheme: InputDecorationTheme(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 14,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 2),
                      ),
                    ),
                    elevatedButtonTheme: ElevatedButtonThemeData(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white, // teks tombol putih
                        elevation: 0,
                      ),
                    ),
                  ),
                  child: Card(
                    color: Colors.white,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          label("Nama"),
                          MymineTextfield(
                            hint: "Masukkan nama lengkap",
                            txtcontroller: txtNama,
                            radius: 10,
                          ),
                          const SizedBox(height: 16),
                          label("Alamat"),
                          MymineTextfield(
                            hint: "Masukkan alamat",
                            txtcontroller: txtAlamat,
                            radius: 10,
                          ),
                          const SizedBox(height: 16),
                          label("Jenis Kelamin"),
                          Obx(
                            () => MymineDropdown(
                              hint: "Pilih jenis kelamin",
                              items: listJenisKelamin,
                              value: jenisKelamin.value,
                              radius: 10,
                              onChanged: (v) => jenisKelamin.value = v,
                            ),
                          ),
                          const SizedBox(height: 16),
                          label("No WhatsApp"),
                          MymineTextfield(
                            hint: "Contoh: 08123456789",
                            txtcontroller: txtNoWa,
                            radius: 10,
                          ),
                          const SizedBox(height: 16),
                          label("Email"),
                          MymineTextfield(
                            hint: "Contoh: nama@gmail.com",
                            txtcontroller: txtEmail,
                            radius: 10,
                          ),
                          const SizedBox(height: 24),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: MymineButton(
                              text: "Kirim",
                              radius: 10,
                              onPressed: kirim,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}