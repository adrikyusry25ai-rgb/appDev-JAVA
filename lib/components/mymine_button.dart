import 'package:flutter/material.dart';

class MymineButton extends StatelessWidget {
  //list variabel parameter yang di gunakan
  final String text; //untuk diisikan ketika di panggil
  final VoidCallback onPressed; //untuk diisikan ketika di panggil
  final double radius; //untuk diisikan ketika di panggil
  final Color? color; //opsional, default nanti di kasih warna default

  const MymineButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.radius,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      child: Text(text),
    ); // ElevatedButton
  }
}