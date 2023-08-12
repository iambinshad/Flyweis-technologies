import '../controller/iphone_14_sixty_controller.dart';
import 'package:get/get.dart';

class Iphone14SixtyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14SixtyController());
  }
}
