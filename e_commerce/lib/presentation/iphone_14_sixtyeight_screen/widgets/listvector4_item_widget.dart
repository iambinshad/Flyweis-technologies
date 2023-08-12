import '../controller/iphone_14_sixtyeight_controller.dart';
import '../models/listvector4_item_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listvector4ItemWidget extends StatelessWidget {
  Listvector4ItemWidget(this.listvector4ItemModelObj);

  Listvector4ItemModel listvector4ItemModelObj;

  var controller = Get.find<Iphone14SixtyeightController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgVector37x36,
          height: getVerticalSize(
            37,
          ),
          width: getHorizontalSize(
            36,
          ),
          margin: getMargin(
            top: 16,
            bottom: 15,
          ),
        ),
        Padding(
          padding: getPadding(
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "msg_loreum_ipsum_dolor".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterBold1499,
                  ),
                  Padding(
                    padding: getPadding(
                      left: 37,
                      top: 2,
                      bottom: 2,
                    ),
                    child: Text(
                      "lbl_8_35_pm".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular1125,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: getPadding(
                  left: 4,
                  top: 10,
                ),
                child: Text(
                  "msg_loreum_ipsum_dolor2".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular1312,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 8,
                ),
                child: Text(
                  "msg_sadipcing_eliter".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular1312,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
