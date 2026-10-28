import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controller/list_produk_controller.dart';
import 'package:flutter_application_1/route.dart';

class ListProdukPage extends StatelessWidget {
  ListProdukPage({super.key});

  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 141, 154, 204),
      appBar: AppBar(
        title: Text(
          "my mine gw produk",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 141, 154, 204),
        surfaceTintColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: controller.listProduk.length,
        itemBuilder: (context, index) {
          final produk = controller.listProduk[index];
          return Card(
            color: const Color.fromARGB(255, 141, 154, 204),
            elevation: 2,
            margin: EdgeInsets.only(bottom: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: InkWell(
              onTap: () {
                Get.toNamed(
                  Routes.detailProduk,
                  arguments: {
                    'namaProduk': produk.namaProduk,
                    'description': produk.description,
                    'harga': produk.harga,
                    'image': produk.image,
                    'Rating': produk.Rating,
                    'Review': produk.Review,
                  },
                );
              },
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    // gambar
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F6FA),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(produk.image, fit: BoxFit.contain),
                      ),
                    ),
                    SizedBox(width: 14),

                    // info produk
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            produk.namaProduk,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          SizedBox(height: 6),
                          Text(
                            "Rp ${produk.harga.toStringAsFixed(0)}",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 3,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.amber.shade50,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: 16),
                                SizedBox(width: 4),
                                Text(
                                  "${produk.Rating}",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
