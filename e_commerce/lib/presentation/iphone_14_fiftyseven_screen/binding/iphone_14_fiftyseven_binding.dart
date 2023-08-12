import '../controller/iphone_14_fiftyseven_controller.dart';
import 'package:get/get.dart';

class Iphone14FiftysevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14FiftysevenController());
  }
}
