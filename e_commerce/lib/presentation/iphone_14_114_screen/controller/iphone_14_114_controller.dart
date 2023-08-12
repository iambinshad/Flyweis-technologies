import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/presentation/iphone_14_114_screen/models/iphone_14_114_model.dart';
import 'package:flutter/material.dart';

class Iphone14114Controller extends GetxController {
  TextEditingController addressController = TextEditingController();

  TextEditingController addressoneController = TextEditingController();

  TextEditingController pincodeController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController landmarkController = TextEditingController();

  Rx<Iphone14114Model> iphone14114ModelObj = Iphone14114Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    addressController.dispose();
    addressoneController.dispose();
    pincodeController.dispose();
    nameController.dispose();
    landmarkController.dispose();
  }
}
