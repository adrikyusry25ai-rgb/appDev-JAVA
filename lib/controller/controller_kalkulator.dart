import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  var hasilHitung = 0.0.obs;

  // method tambah kurang kali dan bagi
  void tambah(double angka1, double angka2) {
    double hasilTambah = angka1 + angka2;
    hasilHitung.value = hasilTambah;
    Get.snackbar(
      "hasil jumlah",
      "${hasilTambah.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kurang(double angka1, double angka2) {
    double hasilTambah = angka1 - angka2;
    hasilHitung.value = hasilTambah;
    Get.snackbar(
      "hasil pengurangan",
      "${hasilTambah.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kali(double angka1, double angka2) {
    double hasilTambah = angka1 * angka2;
    hasilHitung.value = hasilTambah;
    Get.snackbar(
      "hasil perkalian",
      "${hasilTambah.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void bagi(double angka1, double angka2) {
    double hasilTambah = angka1 / angka2;
    hasilHitung.value = hasilTambah;
    Get.snackbar(
      "hasil pembagian",
      "${hasilTambah.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}