import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/list_produk_controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';


class ListProdukPage extends StatelessWidget {
  ListProdukPage({super.key});

  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Products")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.listProduk.length,
          itemBuilder: (context, index) {
            final produk = controller.listProduk[index];
            return InkWell(
              onTap: () {
                // move to detail page with product details
                Get.toNamed('/detailProduk', arguments: {
                  'id': produk.id,
                  'namaProduk': produk.namaProduk,
                  'harga': produk.harga,
                  'description': produk.description,
                });
              },
              child: ListTile(
                title: Text(produk.namaProduk),
                subtitle: Text("Rp ${produk.harga.toStringAsFixed(0)}"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            );
          },
        ),
      ),
    );
  }
}