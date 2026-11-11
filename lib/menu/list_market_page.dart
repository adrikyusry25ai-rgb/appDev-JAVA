import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controller/list_market_controller.dart';

class ListMarketPage extends StatelessWidget {
  ListMarketPage({super.key});

  final controller = Get.put(ListMarketController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 141, 154, 204),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        if (controller.listData.isEmpty) {
          return const Center(child: Text("Data kosong"));
        }
        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: controller.listData.length,
          itemBuilder: (context, index) {
            final item = controller.listData[index];
            return Card(
              child: ListTile(
                leading: SizedBox(
                  width: 56,
                  child: Image.network(item.image, fit: BoxFit.contain),
                ),
                title: Text(
                  item.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text("\$ ${item.price}"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 16),
                    Text("${item.rating.rate}"),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
