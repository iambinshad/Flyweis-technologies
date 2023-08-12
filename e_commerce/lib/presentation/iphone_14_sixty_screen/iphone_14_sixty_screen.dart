import 'controller/iphone_14_sixty_controller.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Iphone14SixtyScreen extends GetWidget<Iphone14SixtyController> {
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
                          margin: getMargin(right: 200),
                          height: getVerticalSize(52),
                          text: "lbl_tracking_order".tr,
                          variant: ButtonVariant.FillWhiteA700,
                          shape: ButtonShape.Square,
                          prefixWidget: Container(
                              margin: getMargin(right: 15),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleftBlack900)),
                          onTap: () {
                            onTapTrackingorder();
                          }),
                      Padding(
                          padding: getPadding(top: 31),
                          child: Text("msg_order_no_123_456".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratBold20)),
                      Container(
                          height: getVerticalSize(490),
                          width: double.maxFinite,
                          margin: getMargin(top: 19),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgOverlay,
                                height: getVerticalSize(381),
                                width: getHorizontalSize(390),
                                alignment: Alignment.topCenter),
                            CustomImageView(
                                svgPath: ImageConstant.imgPath,
                                height: getVerticalSize(382),
                                width: getHorizontalSize(195),
                                alignment: Alignment.topCenter),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    margin: getMargin(
                                        left: 33, top: 381, right: 33),
                                    padding: getPadding(
                                        left: 18,
                                        top: 14,
                                        right: 18,
                                        bottom: 14),
                                    decoration: AppDecoration.fillGreen900
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgAirplane,
                                              height: getSize(28),
                                              width: getSize(28),
                                              margin: getMargin(
                                                  top: 6, bottom: 45)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 23, top: 6, bottom: 16),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_xyz_delievery".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtMontserratRegular942),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 7),
                                                        child: Text(
                                                            "lbl_shipped".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratMedium1507)),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 4),
                                                        child: Text(
                                                            "msg_house_number_delhi"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratRegular113))
                                                  ])),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector79x79,
                                              height: getSize(79),
                                              width: getSize(79),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(20)),
                                              margin: getMargin(left: 36))
                                        ])))
                          ])),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "msg_continue_shopping".tr,
                          margin: getMargin(
                              left: 20, top: 57, right: 20, bottom: 5),
                          padding: ButtonPadding.PaddingAll16,
                          fontStyle: ButtonFontStyle.MontserratBold1361Green50)
                    ]))));
  }

  onTapTrackingorder() {
    Get.toNamed(
      AppRoutes.iphone14FiftynineScreen,
    );
  }
}
