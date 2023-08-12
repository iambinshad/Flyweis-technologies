import '../controller/iphone_14_sixtyone_controller.dart';
import '../models/listvector_item_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListvectorItemWidget extends StatelessWidget {
  ListvectorItemWidget(
    this.listvectorItemModelObj, {
    this.onTapReview,
    this.onTapReturn,
  });

  ListvectorItemModel listvectorItemModelObj;

  var controller = Get.find<Iphone14SixtyoneController>();

  VoidCallback? onTapReview;

  VoidCallback? onTapReturn;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        108,
      ),
      width: getHorizontalSize(
        360,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.green.shade900),
      ),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: getPadding(
                left: 104,
                top: 14,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_cauliflower".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular14Black900,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 9,
                    ),
                    child: Text(
                      "lbl_565_0".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular147,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVector79x86,
            height: getVerticalSize(
              89,
            ),
            width: getHorizontalSize(
              90,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                18,
              ),
            ),
            alignment: Alignment.centerLeft,
            margin: getMargin(
              left: 9,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: () {
          onTapReview!();
        },
              child: Container(
                margin: getMargin(
                  right: 118,
                  bottom: 10,
                ),
                height: 23,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.green.shade800,
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                  child: Text('Review', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: () {
          onTapReturn!();
        },
              child: Container(
                margin: getMargin(
                  right: 8,
                  bottom: 10,
                ),
                height: 23,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.green.shade800,
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                  child: Text('Return', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ),
          // CustomButton(
          //   width: 50,
          //   // height: getVerticalSize(
          //   //   5,
          //   // ),
          //   // width: getHorizontalSize(
          //   //   79,
          //   // ),
          //   text: "lbl_review".tr,
          //   margin: getMargin(
          //     right: 105,
          //     bottom: 8,
          //   ),
          //   shape: ButtonShape.CustomBorderBL10,
          //   padding: ButtonPadding.PaddingAll2,
          //   fontStyle: ButtonFontStyle.MontserratBold1286,
          //   onTap: () {
          //     // onTapReview();
          //   },
          //   alignment: Alignment.bottomRight,
          // ),
          // CustomButton(
          //   height: getVerticalSize(
          //     22,
          //   ),
          //   width: getHorizontalSize(
          //     79,
          //   ),
          //   text: "lbl_return".tr,
          //   margin: getMargin(
          //     right: 8,
          //     bottom: 8,
          //   ),
          //   shape: ButtonShape.CustomBorderBL10,
          //   padding: ButtonPadding.PaddingAll2,
          //   fontStyle: ButtonFontStyle.MontserratBold1286,
          //   onTap: () {
          //     // onTapReturn();
          //   },
          //   alignment: Alignment.bottomRight,
          // ),
        ],
      ),
    );
  }
}
