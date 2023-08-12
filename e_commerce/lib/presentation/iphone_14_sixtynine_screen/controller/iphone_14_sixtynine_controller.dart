import 'package:e_commerce/core/app_export.dart';import 'package:e_commerce/presentation/iphone_14_sixtynine_screen/models/iphone_14_sixtynine_model.dart';import 'package:flutter/material.dart';class Iphone14SixtynineController extends GetxController {TextEditingController group634Controller = TextEditingController();

Rx<Iphone14SixtynineModel> iphone14SixtynineModelObj = Iphone14SixtynineModel().obs;

Rx<bool> isCheckbox = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); group634Controller.dispose(); } 
 }
