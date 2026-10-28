import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controller/menu_drawer_controller.dart';

class MenuDrawerPage extends StatelessWidget {
  MenuDrawerPage({super.key});

  final controller = Get.put(MenuDrawerController());

  @override
  Widget build(BuildContext context) {
     return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text(
            "my mine gw produk",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 91, 108, 151)),

          drawer: NavigationDrawer(
            selectedIndex: controller.selectedIndex.value,

          onDestinationSelected: (index) {
            controller.changeIndex(index);
            Navigator.pop(context);
          },

          children: [
            NavigationDrawerDestination(
              icon: Icon(Icons.home),
              label: Text("Home"),
            ),
            NavigationDrawerDestination(
              icon: Icon(Icons.history),
              label: Text("History"),
            ),
            NavigationDrawerDestination(
              icon: Icon(Icons.person),
              label: Text("Profile"),
            ),
          ],
        ),

        body: IndexedStack(
          index: controller.selectedIndex.value,
          children: controller.listPages,
        ),
      ),
    );
  }
}