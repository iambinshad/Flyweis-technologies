import '../controller/iphone_14_ninetyone_controller.dart';
import 'package:get/get.dart';

class Iphone14NinetyoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14NinetyoneController());
  }
}
