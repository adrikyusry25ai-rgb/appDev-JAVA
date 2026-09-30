import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/mymine_textfield.dart';
import 'package:flutter_application_1/controller/controller_kalkulator.dart';
import 'package:flutter_application_1/components/mymine_operasibutton.dart';
import 'package:get/get.dart';

class KalkulatorPagest extends StatelessWidget {
  KalkulatorPagest({super.key});

  final controller = Get.put(KalkulatorController());
  
  @override
  Widget build(BuildContext context) {
    TextEditingController txtangka1 = TextEditingController();
    TextEditingController txtangka2 = TextEditingController();
    
    return Scaffold(
            backgroundColor: const Color.fromARGB(255, 216, 189, 189),
      appBar: AppBar(title: const Text("Kalkulator")),
      body: Padding(
        padding: const EdgeInsets.all(16.0), 
        child: Column(
          children: [
            MymineTextfield(
              hint: "input angka 1",
              txtcontroller: txtangka1,
              radius: 10,
            ),
            
            const SizedBox(height: 16), 
            
            MymineTextfield(
              hint: "input angka 2",
              txtcontroller: txtangka2,
              radius: 10,
            ),
            
            const SizedBox(height: 24), 
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MymineOperasiButton(
                  text: "tambah",
                  onPressed: () {
                    controller.tambah(
                      double.parse(txtangka1.text.toString()),
                      double.parse(txtangka2.text.toString()),
                    );
                  },
                ),
                MymineOperasiButton(
                  text: "kurang",
                  onPressed: () {
                    controller.kurang(
                      double.parse(txtangka1.text.toString()),
                      double.parse(txtangka2.text.toString()),
                    );
                  },
                ),
                MymineOperasiButton(
                  text: "kali",
                  onPressed: () {
                    controller.kali(
                      double.parse(txtangka1.text.toString()),
                      double.parse(txtangka2.text.toString()),
                    );
                  },
                ),
                MymineOperasiButton(
                  text: "bagi",
                  onPressed: () {
                    controller.bagi(
                      double.parse(txtangka1.text.toString()),
                      double.parse(txtangka2.text.toString()),
                    );
                  },
                ),
              ],
            ),
            
            const SizedBox(height: 32), 
            
            Obx(
              // 5. Perbagus tampilan hasil
              () => Text(
                "Hasil: ${controller.hasilHitung.toString()}",
                style: const TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}