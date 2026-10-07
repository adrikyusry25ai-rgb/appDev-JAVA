import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controller/list_produk_controller.dart';
import 'package:flutter_application_1/route.dart';

// format angka jadi Rp 4.999.000
String _rupiah(double nilai) {
  final angka = nilai.toStringAsFixed(0);
  final hasil = angka.replaceAllMapped(
    RegExp(r'\B(?=(\d{3})+(?!\d))'),
    (m) => '.',
  );
  return "Rp $hasil";
}

class ListProdukPage extends StatelessWidget {
  ListProdukPage({super.key});

  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    final warnaUtama = Theme.of(context).colorScheme.primary;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 91, 108, 151),
      appBar: AppBar(
        title: Text(
          "My Products",
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
            surfaceTintColor: Colors.white,
            elevation: 2,
            shadowColor: Colors.black12,
            margin: EdgeInsets.only(bottom: 14),
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: InkWell(
              onTap: () {
                // move to detail page with product details
                Get.toNamed(Routes.detailProduk, arguments: produk);
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
                        child: Image.network(
                          produk.image,
                          fit: BoxFit.contain,
                          errorBuilder: (_, __, ___) => Icon(
                            Icons.image_not_supported,
                            color: Colors.grey,
                            size: 40,
                          ),
                        ),
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
                            _rupiah(produk.harga),
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: warnaUtama,
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
                    Icon(Icons.chevron_right, color: Colors.grey),
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