import '../controller/iphone_14_sixtythree_controller.dart';
import '../models/listzipcode_item_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListzipcodeItemWidget extends StatelessWidget {
  ListzipcodeItemWidget(this.listzipcodeItemModelObj);

  ListzipcodeItemModel listzipcodeItemModelObj;

  var controller = Get.find<Iphone14SixtythreeController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(
          () => Text(
            listzipcodeItemModelObj.zipcodeTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtMontserratBold1902,
          ),
        ),
        Obx(
          () => Text(
            listzipcodeItemModelObj.zipcodeoneTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtMontserratBold1902,
          ),
        ),
        Obx(
          () => Text(
            listzipcodeItemModelObj.zipcodetwoTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtMontserratBold1902,
          ),
        ),
        Obx(
          () => Text(
            listzipcodeItemModelObj.zipcodethreeTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtMontserratBold1902,
          ),
        ),
      ],
    );
  }
}
