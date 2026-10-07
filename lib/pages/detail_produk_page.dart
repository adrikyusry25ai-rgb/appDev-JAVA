import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controller/detail_produk_controller.dart';
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

class DetailProdukPage extends StatelessWidget {
  DetailProdukPage({super.key});

  final controller = Get.put(DetailProdukController());

  @override
  Widget build(BuildContext context) {
    final produk = controller.produk;
    final warnaUtama = Theme.of(context).colorScheme.primary;

    // kalau halaman dibuka tanpa data produk
    if (produk == null) {
      return Scaffold(
        backgroundColor: Color.fromARGB(255, 28, 155, 177),
        appBar: AppBar(title: Text("Detail Produk")),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Produk tidak ditemukan"),
              SizedBox(height: 12),
              ElevatedButton(
                onPressed: () => Get.offAllNamed(Routes.listProduk),
                child: Text("Kembali ke daftar"),
              ),
            ],
          ),
        ),
      );
    }

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
            // gambar produk
            Container(
              width: double.infinity,
              height: 280,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 244, 243, 243),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.network(
                produk.image,
                fit: BoxFit.contain,
                errorBuilder: (_, __, ___) => Icon(
                  Icons.image_not_supported,
                  color: Colors.grey,
                  size: 100,
                ),
              ),
            ),
            SizedBox(height: 16),

            // info utama
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
                    produk.namaProduk,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 4),
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
                              "${produk.Rating}",
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
                    _rupiah(produk.harga),
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: warnaUtama,
                    ),
                  ),
                  SizedBox(height: 16),
                  Divider(color: Colors.grey.shade200),
                  SizedBox(height: 12),
                  Text(
                    "Deskripsi",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    produk.description,
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
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
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
                        Icon(Icons.format_quote, color: warnaUtama),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            produk.Review,
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