import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controller/list_produk_controller.dart';
import 'package:flutter_application_1/route.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 91, 108, 151),
      appBar: AppBar(
        title: Text(
          "My Products",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 141, 154, 204),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Produk my mine aku",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          Container(
            height: 280,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemCount: controller.listProduk.length,
              itemBuilder: (context, index) {
                final produk = controller.listProduk[index];
                return Container(
                  width: 180,
                  margin: EdgeInsets.only(right: 14),
                  child: Card(
                    color: const Color.fromARGB(255, 141, 154, 204),
                    elevation: 2,
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 110,
                              decoration: BoxDecoration(
                                color: Color(0xFFF5F6FA),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  produk.image,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(height: 8),

                          
                            Text(
                              produk.namaProduk,
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Rp ${produk.harga.toStringAsFixed(0)}",
                              style: TextStyle(
                                fontSize: 16,



                                
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 6),
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
                                  Icon(Icons.star,
                                      color: Colors.amber, size: 16),
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
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}