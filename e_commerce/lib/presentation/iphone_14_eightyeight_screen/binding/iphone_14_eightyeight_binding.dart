import '../controller/iphone_14_eightyeight_controller.dart';
import 'package:get/get.dart';

class Iphone14EightyeightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14EightyeightController());
  }
}
