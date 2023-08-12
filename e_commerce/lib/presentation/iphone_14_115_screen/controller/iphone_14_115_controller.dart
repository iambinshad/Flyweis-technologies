import 'package:e_commerce/core/app_export.dart';import 'package:e_commerce/presentation/iphone_14_115_screen/models/iphone_14_115_model.dart';class Iphone14115Controller extends GetxController {Rx<Iphone14115Model> iphone14115ModelObj = Iphone14115Model().obs;

@override void onReady() { super.onReady();Future.delayed(const Duration(milliseconds: 2000), (){
Get.toNamed(AppRoutes.iphone14116Screen, );}); } 
@override void onClose() { super.onClose(); } 
 }
