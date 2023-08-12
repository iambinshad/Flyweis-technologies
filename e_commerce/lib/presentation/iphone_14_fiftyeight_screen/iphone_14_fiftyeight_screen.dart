import 'controller/iphone_14_fiftyeight_controller.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Iphone14FiftyeightScreen extends GetWidget<Iphone14FiftyeightController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          margin: getMargin(right: 215),
                          height: getVerticalSize(52),
                          text: "lbl_checkout".tr,
                          variant: ButtonVariant.FillWhiteA700,
                          shape: ButtonShape.Square,
                          prefixWidget: Container(
                              margin: getMargin(right: 15),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleftBlack900)),
                          onTap: () {
                            onTapCheckout();
                          }),
                      Container(
                          height: getSize(256),
                          width: getSize(256),
                          margin: getMargin(top: 69),
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                imagePath: ImageConstant.img02lottietick01instant2,
                                height: getSize(256),
                                width: getSize(256),
                                alignment: Alignment.center)
                          ])),
                      Padding(
                          padding: getPadding(top: 47),
                          child: Text("lbl_order_accepted".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratBold2333)),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Text("msg_your_order_no_123_456".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratRegular1556)),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Text("lbl_has_been_placed".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratRegular1556)),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_track_order".tr,
                          margin: getMargin(left: 20, right: 20, bottom: 105),
                          padding: ButtonPadding.PaddingAll16,
                          fontStyle: ButtonFontStyle.MontserratBold1361,
                          onTap: () {
                            onTapTrackorder();
                          })
                    ]))));
  }

  onTapCheckout() {
    Get.toNamed(
      AppRoutes.iphone14FiftysevenScreen,
    );
  }

  onTapTrackorder() {
    Get.toNamed(
      AppRoutes.iphone14FiftynineScreen,
    );
  }
}
