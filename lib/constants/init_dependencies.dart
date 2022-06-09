import 'package:get/get.dart';
import 'package:ibile/controllers/home_controller.dart';

class InitDependencies implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
