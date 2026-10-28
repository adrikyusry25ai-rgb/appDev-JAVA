import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controller/detail_produk_controller.dart';
import 'package:flutter_application_1/route.dart';

class DetailProdukPage extends StatelessWidget {
  DetailProdukPage({super.key});

  final controller = Get.put(DetailProdukController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 135, 183, 193),
      appBar: AppBar(
        title: Text(
          "Detail Produk",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 280,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 244, 243, 243),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.network(controller.image, fit: BoxFit.contain),
            ),
            SizedBox(height: 16),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 190, 225, 254),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    controller.namaProduk,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.amber.shade50,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 18),
                            SizedBox(width: 4),
                            Text(
                              "${controller.Rating}",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 14),
                  Text(
                            "Rp ${controller.harga.toStringAsFixed(0)}",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),

                  SizedBox(height: 16),
                  // Divider(color: Colors.grey.shade200),
                  SizedBox(height: 12),
                  Text(
                    "Deskripsi",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Text(
                    controller.description,
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // review
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 190, 225, 254),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Review",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F6FA),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.format_quote, color: Color.fromARGB(255, 0, 0, 0)),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            controller.Review,
                            style: TextStyle(
                              fontSize: 15,
                              height: 1.5,
                              fontStyle: FontStyle.italic,
                            ),
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
    );
  }
}
