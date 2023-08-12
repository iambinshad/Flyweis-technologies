import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/presentation/iphone_14_116_screen/models/iphone_14_116_model.dart';

class Iphone14116Controller extends GetxController {
  Rx<Iphone14116Model> iphone14116ModelObj = Iphone14116Model().obs;

  @override
  void onReady() {
    super.onReady();
    Get.toNamed(
      AppRoutes.signUpOneScreen,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }
}
