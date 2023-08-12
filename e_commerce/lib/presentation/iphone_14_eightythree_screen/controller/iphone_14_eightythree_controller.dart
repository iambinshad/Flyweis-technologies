import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/presentation/iphone_14_eightythree_screen/models/iphone_14_eightythree_model.dart';
import 'package:flutter/material.dart';

class Iphone14EightythreeController extends GetxController {
  TextEditingController group644Controller = TextEditingController();

  Rx<Iphone14EightythreeModel> iphone14EightythreeModelObj =
      Iphone14EightythreeModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group644Controller.dispose();
  }
}
