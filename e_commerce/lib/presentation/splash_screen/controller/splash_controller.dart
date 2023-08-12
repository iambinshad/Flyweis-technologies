import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/onboarding_screen/onboarding_tab_controller.dart';
import 'package:e_commerce/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(OnboardingScreen());
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
