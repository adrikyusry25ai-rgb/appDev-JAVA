import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('kalkulator rata kanan pro max 99')),
      body: Column(
        children: [
          Container(margin: EdgeInsets.all(16), child: TextField(decoration: InputDecoration(hintText: "input angka 1"))),
          Container(margin: EdgeInsets.all(16), child: TextField(decoration: InputDecoration(hintText: "input angka 2"))),
          Container(margin: EdgeInsets.all(16), child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Text("+",style: TextStyle(fontSize: 30, color: const Color.fromARGB(255, 248, 15, 190)),)),
              ElevatedButton(onPressed: () {}, child: Text("-",style: TextStyle(fontSize: 30, color: const Color.fromARGB(255, 248, 15, 190)),)),
              ElevatedButton(onPressed: () {}, child: Text("x",style: TextStyle(fontSize: 30, color: const Color.fromARGB(255, 248, 15, 190)),)),
              ElevatedButton(onPressed: () {}, child: Text(":",style: TextStyle(fontSize: 30, color: const Color.fromARGB(255, 248, 15, 190)),)),
              
            ],
          )),
          Container(margin: EdgeInsets.all(16), child: TextField(decoration: InputDecoration(hintText: "hasil"))),
          Container(margin: EdgeInsets.all(16), child: ElevatedButton(onPressed: () {}, child: Text("RESET",))),
        ],
      ),
    );
  }
}