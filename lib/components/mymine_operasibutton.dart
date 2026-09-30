import 'package:flutter/material.dart';

class MymineOperasiButton extends StatelessWidget {
  final String text; // Teks yang akan tampil di dalam tombol
  final VoidCallback onPressed; // Fungsi yang akan dijalankan saat tombol ditekan

  const MymineOperasiButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}