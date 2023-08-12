import 'package:e_commerce/core/app_export.dart';import 'package:e_commerce/presentation/iphone_14_sixtythree_screen/models/iphone_14_sixtythree_model.dart';import 'package:flutter/material.dart';class Iphone14SixtythreeController extends GetxController {TextEditingController group621Controller = TextEditingController();

Rx<Iphone14SixtythreeModel> iphone14SixtythreeModelObj = Iphone14SixtythreeModel().obs;

Rx<bool> isCheckbox = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); group621Controller.dispose(); } 
 }
