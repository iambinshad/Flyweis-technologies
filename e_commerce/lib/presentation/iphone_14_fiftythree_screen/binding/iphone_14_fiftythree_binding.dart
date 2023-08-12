import '../controller/iphone_14_fiftythree_controller.dart';
import 'package:get/get.dart';

class Iphone14FiftythreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14FiftythreeController());
  }
}
