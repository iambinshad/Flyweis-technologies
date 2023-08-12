import '../controller/iphone_14_eightyseven_controller.dart';
import '../models/listdiscthree1_item_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listdiscthree1ItemWidget extends StatelessWidget {
  Listdiscthree1ItemWidget(this.listdiscthree1ItemModelObj);

  Listdiscthree1ItemModel listdiscthree1ItemModelObj;

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
            top: 4,
            bottom: 4,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 13,
            top: 4,
            bottom: 5,
          ),
          child: Obx(
            () => Text(
              listdiscthree1ItemModelObj.upiTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtNunitoSansRegular1664,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          svgPath: ImageConstant.imgBhimupi1,
          height: getSize(
            33,
          ),
          width: getSize(
            33,
          ),
        ),
      ],
    );
  }
}
