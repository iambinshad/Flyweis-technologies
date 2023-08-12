import 'controller/iphone_14_sixtyfive_controller.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Iphone14SixtyfiveScreen extends GetWidget<Iphone14SixtyfiveController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          margin: getMargin(right: 225),
                          height: getVerticalSize(52),
                          text: "lbl_settings".tr,
                          variant: ButtonVariant.FillWhiteA700,
                          shape: ButtonShape.Square,
                          prefixWidget: Container(
                              margin: getMargin(right: 15),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleftBlack900)),
                          onTap: () {
                            onTapSettings();
                          }),
                      Padding(
                          padding: getPadding(left: 20, top: 21),
                          child: Text("msg_your_app_settings".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular1509)),
                      Padding(
                          padding: getPadding(left: 20, top: 24),
                          child: Text("lbl_notifications".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium1509)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 20, top: 12, right: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("msg_receive_notifications".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular1321),
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Text(
                                                  "msg_and_tore_updates".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular1321))
                                        ]),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgCameraWhiteA700,
                                        height: getVerticalSize(22),
                                        width: getHorizontalSize(42),
                                        margin: getMargin(bottom: 20))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 20, top: 52),
                          child: Text("lbl_popups".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium1509)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 20, top: 9, right: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("msg_disable_all_popups".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular1321),
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text(
                                                      "msg_third_party_vendors"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular1321))
                                            ])),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgCameraWhiteA700,
                                        height: getVerticalSize(22),
                                        width: getHorizontalSize(42),
                                        margin: getMargin(bottom: 20))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 20, top: 51),
                          child: Text("lbl_order_history".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium1509)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 20, top: 10, right: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 2),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("msg_keep_your_order".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular1321),
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text(
                                                      "msg_unless_manually".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular1321))
                                            ])),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgContrastGreen900,
                                        height: getVerticalSize(22),
                                        width: getHorizontalSize(42),
                                        margin: getMargin(bottom: 21))
                                  ]))),
                      CustomButton(
                          height: getVerticalSize(43),
                          text: "lbl_update_settings".tr,
                          margin: getMargin(
                              left: 30, top: 32, right: 20, bottom: 5),
                          shape: ButtonShape.CustomBorderTL22,
                          padding: ButtonPadding.PaddingAll13,
                          fontStyle: ButtonFontStyle.MontserratBold1321,
                          alignment: Alignment.center)
                    ]))));
  }

  onTapSettings() {
    Get.back(
      // AppRoutes.iphone14FiftythreeScreen,
    );
  }
}
