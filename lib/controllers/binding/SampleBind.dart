import 'package:get/get.dart';
import 'package:getxproject/controllers/SommeControl.dart';

class SampleBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SommeController>(() => SommeController());
  }
}
