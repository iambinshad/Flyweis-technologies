import '../controller/iphone_14_sixtysix_controller.dart';
import 'package:get/get.dart';

class Iphone14SixtysixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14SixtysixController());
  }
}
