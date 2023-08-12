import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/presentation/dashboard_1_screen/models/dashboard_1_model.dart';

class Dashboard1Controller extends GetxController {
  Rx<Dashboard1Model> dashboard1ModelObj = Dashboard1Model().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(
        AppRoutes.iphone14115Screen,
      );
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
