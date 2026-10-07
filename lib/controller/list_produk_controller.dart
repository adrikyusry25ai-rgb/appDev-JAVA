import 'package:flutter_application_1/models/produk_model.dart';
import 'package:get/get.dart';

class ListProdukController extends GetxController {
  List<ProdukModel> listProduk = [
    ProdukModel(
      namaProduk: "Smartphone Nova X5",
      harga: 4999000,
      description:
          "Smartphone layar AMOLED 6,7 inci dengan kamera 50 MP, RAM 8 GB, penyimpanan 256 GB, dan baterai 5000 mAh dengan fast charging.",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe8PGZyxExa0UNWBgC61kZzqpTb5elOAUnX2ufxJpFlQ&s",
      Rating: 4.7,
      Review: "Kameranya jernih dan baterai awet seharian.",
    ),
    ProdukModel(
      namaProduk: "Laptop ProBook 14",
      harga: 8750000,
      description:
          "Laptop tipis 14 inci dengan prosesor Core i5, RAM 16 GB, SSD 512 GB, cocok untuk kuliah, kerja, dan coding.",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVkFFMIqzCFrRj4oK68MQ1laBTjLJYfLMcfd_XCFBCeA&s=10",
      Rating: 4.5,
      Review: "Ringan dibawa, performa lancar untuk coding.",
    ),
    ProdukModel(
      namaProduk: "Skuter Listrik Volta S1",
      harga: 12500000,
      description:
          "Skuter listrik dengan jarak tempuh hingga 60 km sekali charge, kecepatan maksimal 45 km/jam, dan lampu LED depan.",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnBNfmjcFBSQElSt96oLeaywy3F3KiqsJ95tywxg0Org&s=10",
      Rating: 4.3,
      Review: "Hemat dan nyaman untuk dipakai harian dalam kota.",
    ),
    ProdukModel(
      namaProduk: "Drone SkyEye Mini",
      harga: 3250000,
      description:
          "Drone lipat dengan kamera 4K, stabilizer 3 sumbu, waktu terbang 30 menit, dan mode follow me.",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXRuHv56wcXoaAottqLpXJ1FhM9NFKFdD-FVeFivK5jw&s=10",
      Rating: 4.6,
      Review: "Hasil videonya halus, mudah diterbangkan pemula.",
    ),
    ProdukModel(
      namaProduk: "Headphone Wireless BassMax",
      harga: 1250000,
      description:
          "Headphone nirkabel dengan noise cancelling, bass kuat, Bluetooth 5.3, dan daya tahan baterai hingga 40 jam.",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMSO_BHjRBnXQAk2JiDHXqo-R3xrtrFost4YhWsvRutQ&s=10",
      Rating: 4.8,
      Review: "Suaranya mantap, noise cancelling-nya berfungsi baik.",
    ),
  ];
}