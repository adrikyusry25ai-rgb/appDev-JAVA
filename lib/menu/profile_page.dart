import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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

          // ===== Bagian profil (baru) =====
          Center(
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 60,
                    color: Color.fromARGB(255, 91, 108, 151),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  "Nama Kamu",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  "Deskripsi singkat tentang kamu",
                  style: TextStyle(fontSize: 14, color: Colors.white70),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text("email@contoh.com"),
                  ),
                  Divider(height: 0),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("08xx-xxxx-xxxx"),
                  ),
                  Divider(height: 0),
                  ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text("Kudus, Jawa Tengah"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}