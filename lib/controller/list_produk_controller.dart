import 'package:flutter_application_1/models/produk_model.dart';
import 'package:get/get.dart';

class ListProdukController extends GetxController {
  List<ProdukModel> listProduk = [
    ProdukModel(id: "1", namaProduk: "Produk A", harga: 10000, description: "Deskripsi Produk A"),
    ProdukModel(id: "2", namaProduk: "Produk B", harga: 20000, description: "Deskripsi Produk B"),
    ProdukModel(id: "3", namaProduk: "Produk C", harga: 30000, description: "Deskripsi Produk C"),
    ProdukModel(id: "4", namaProduk: "Produk D", harga: 40000, description: "Deskripsi Produk D"),
    ProdukModel(id: "5", namaProduk: "Produk E", harga: 50000, description: "Deskripsi Produk E"),
  ];
}

