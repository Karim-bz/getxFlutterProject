import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SommeController extends GetxController {
  final count1 = 0.obs; //Compteur
  final count2 = 0.obs;
  final name = 'Karim bouzid'.obs;

  @override
  void onInit() {
    GetStorage box = GetStorage();
    if (box.read("count1") != null) {
      count1.value = box.read("count1");
      count2.value = box.read("count2");
    }
  }

  int get sum => count1.value + count2.value;
  increment() => count1.value++;
  increment2() => count2.value++;
}
