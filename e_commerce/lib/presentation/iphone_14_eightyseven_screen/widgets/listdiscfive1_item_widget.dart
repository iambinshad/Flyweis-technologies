import '../controller/iphone_14_eightyseven_controller.dart';
import '../models/listdiscfive1_item_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listdiscfive1ItemWidget extends StatelessWidget {
  Listdiscfive1ItemWidget(this.listdiscfive1ItemModelObj);

  Listdiscfive1ItemModel listdiscfive1ItemModelObj;

  var controller = Get.find<Iphone14EightysevenController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          svgPath: ImageConstant.imgDisc3,
          height: getSize(
            24,
          ),
          width: getSize(
            24,
          ),
          margin: getMargin(
            top: 8,
            bottom: 7,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 13,
            top: 8,
            bottom: 8,
          ),
          child: Obx(
            () => Text(
              listdiscfive1ItemModelObj.typeTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtNunitoSansRegular1664,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgCreditcard1,
          height: getSize(
            40,
          ),
          width: getSize(
            40,
          ),
        ),
      ],
    );
  }
}
