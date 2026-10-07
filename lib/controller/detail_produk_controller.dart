import 'package:get/get.dart';
import 'package:flutter_application_1/models/produk_model.dart';

class DetailProdukController extends GetxController {
  ProdukModel? produk;
  String namaProduk = '';
  String description = '';
  int harga = 0;
  String image = '';
  double Rating = 0;
  String Review = '';

  @override
  void onInit() {
    super.onInit();
    final argumen = Get.arguments;
    if (argumen is ProdukModel) {
      produk = argumen;
      namaProduk = argumen.namaProduk;
      description = argumen.description;
      harga = argumen.harga.toInt();
      image = argumen.image;
      Rating = argumen.Rating;
      Review = argumen.Review;
    }
  }
}