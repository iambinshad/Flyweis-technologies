import '../controller/iphone_14_eightyseven_controller.dart';
import 'package:get/get.dart';

class Iphone14EightysevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14EightysevenController());
  }
}
