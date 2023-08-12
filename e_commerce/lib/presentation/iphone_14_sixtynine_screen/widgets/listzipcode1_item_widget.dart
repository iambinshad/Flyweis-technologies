import '../controller/iphone_14_sixtynine_controller.dart';
import '../models/listzipcode1_item_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listzipcode1ItemWidget extends StatelessWidget {
  Listzipcode1ItemWidget(this.listzipcode1ItemModelObj);

  Listzipcode1ItemModel listzipcode1ItemModelObj;

  var controller = Get.find<Iphone14SixtynineController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(
          () => Text(
            listzipcode1ItemModelObj.zipcodeTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtMontserratBold1902,
          ),
        ),
        Obx(
          () => Text(
            listzipcode1ItemModelObj.zipcodeoneTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtMontserratBold1902,
          ),
        ),
        Obx(
          () => Text(
            listzipcode1ItemModelObj.zipcodetwoTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtMontserratBold1902,
          ),
        ),
        Obx(
          () => Text(
            listzipcode1ItemModelObj.zipcodethreeTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtMontserratBold1902,
          ),
        ),
      ],
    );
  }
}
