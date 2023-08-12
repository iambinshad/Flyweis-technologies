import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/presentation/sign_up_one_screen/models/sign_up_one_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

class SignUpOneController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  Rx<SignUpOneModel> signUpOneModelObj = SignUpOneModel().obs;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('44').obs;

  @override
  void onReady() {
    super.onReady();
    Get.toNamed(
      AppRoutes.signupFormScreen,
    );
  }

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
  }
}
