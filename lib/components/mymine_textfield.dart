import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class MymineTextfield extends StatelessWidget {
  //list variabel parameter yang di gunakan
  final double radius; //untuk diisikan ketika di panggil
  final String hint; //untuk diisikan ketika di panggil
  final bool obscureText; //opsional, default nanti di kasih false
  final TextEditingController txtcontroller; //untuk diisikan ketika di panggil
  const MymineTextfield({
    super.key,
    required this.hint,
    this.obscureText = false,
    required this.txtcontroller,
    required this.radius, 
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtcontroller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hint: Text(hint),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(radius)),
      ),
    );
  }
}
