import 'package:flutter_application_1/models/market_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ListMarketController extends GetxController {
  var isLoading = false.obs;
  var listData = <MarketModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      isLoading.value = true;
      final url = Uri.parse("https://fakestoreapi.com/products");
      final response = await http.get(url);

      if (response.statusCode == 200) {
        listData.value = marketModelFromJson(response.body);
      } else {
        Get.snackbar("error", "gagal ambil data (${response.statusCode})");
      }
    } catch (e) {
      Get.snackbar("gagal", e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}