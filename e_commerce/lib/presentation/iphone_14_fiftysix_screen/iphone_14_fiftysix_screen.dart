import 'package:e_commerce/widgets/custom_icon_button.dart';

import 'controller/iphone_14_fiftysix_controller.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:e_commerce/widgets/custom_checkbox.dart';
import 'package:flutter/material.dart';

class Iphone14FiftysixScreen extends GetWidget<Iphone14FiftysixController> {
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
                          height: getVerticalSize(24),
                          width: getHorizontalSize(315),
                          margin: getMargin(top: 9),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    width: getHorizontalSize(279),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.green900))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                    width: getHorizontalSize(161),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.green800,
                                        indent: getHorizontalSize(20)))),
                            CustomImageView(
                                svgPath: ImageConstant.imgContrast,
                                height: getSize(24),
                                width: getSize(24),
                                alignment: Alignment.centerRight),
                            CustomImageView(
                                svgPath: ImageConstant.imgSettings,
                                height: getSize(24),
                                width: getSize(24),
                                alignment: Alignment.center),
                            CustomImageView(
                                svgPath: ImageConstant.imgContrastWhiteA700,
                                height: getSize(24),
                                width: getSize(24),
                                alignment: Alignment.centerLeft)
                          ])),
                      Padding(
                          padding: getPadding(left: 30, top: 10, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("lbl_address".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular1121)),
                                Spacer(flex: 53),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("lbl_payments".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular1121)),
                                Spacer(flex: 46),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("lbl_summary".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular1121))
                              ])),
                      Padding(
                          padding: getPadding(left: 20, top: 43, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgVolumeGreen900,
                                    height: getVerticalSize(31),
                                    width: getHorizontalSize(53),
                                    onTap: () {
                                      onTapImgVolume();
                                    }),
                                CustomImageView(
                                    svgPath: ImageConstant.imgFolder,
                                    height: getVerticalSize(31),
                                    width: getHorizontalSize(53),
                                    margin: getMargin(left: 11)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVolume,
                                    height: getVerticalSize(31),
                                    width: getHorizontalSize(53),
                                    margin: getMargin(left: 11)),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtManagepaymentme();
                                    },
                                    child: Padding(
                                        padding: getPadding(
                                            left: 14, top: 11, bottom: 1),
                                        child: Text(
                                            "msg_manage_payment_method".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular1168)))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 20, top: 31),
                              child: Text("lbl_name_on_card".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular1303))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 20, top: 18),
                              child: Text("lbl_lipsum".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRegular1676))),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.green900,
                              indent: getHorizontalSize(20),
                              endIndent: getHorizontalSize(24))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 20, top: 29),
                              child: Text("lbl_card_number".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular1303))),
                      Padding(
                          padding: getPadding(left: 20, top: 12, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 4, bottom: 4),
                                    child: Text("msg_4560_5644_3224_543".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtMontserratRegular1489)),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgVolumeDeepOrangeA400,
                                    height: getVerticalSize(27),
                                    width: getHorizontalSize(39))
                              ])),
                      Padding(
                          padding: getPadding(top: 3),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.green900,
                              indent: getHorizontalSize(20),
                              endIndent: getHorizontalSize(24))),
                      Padding(
                          padding: getPadding(left: 20, top: 29, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_expiry_date".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular1303),
                                          Padding(
                                              padding: getPadding(top: 15),
                                              child: Text("lbl_09_202".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratRegular1489)),
                                          Padding(
                                              padding: getPadding(top: 8),
                                              child: SizedBox(
                                                  width: getHorizontalSize(155),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .green900)))
                                        ])),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_cvv".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtPoppinsRegular1303),
                                      Padding(
                                          padding: getPadding(top: 17),
                                          child: Text("lbl_467".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratRegular1489)),
                                      Padding(
                                          padding: getPadding(top: 8),
                                          child: SizedBox(
                                              width: getHorizontalSize(156),
                                              child: Divider(
                                                  height: getVerticalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color:
                                                      ColorConstant.green900)))
                                    ])
                              ])),
                     Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                       padding: getPadding(left: 8, top: 24),
                       child: Row(
                        children: [
                         CustomIconButton(
                             height: 22,
                             width: 22,
                             margin: getMargin(right: 10),
                             padding: IconButtonPadding.PaddingAll4,
                             child: CustomImageView(
                                 svgPath:
                                 ImageConstant.imgCheckmarkGreen50)),
                         Text(
                          "msg_save_this_card_details".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.w400,
                              fontSize: 15),
                         ),

                        ],
                       ),
                      ),
                     ),


                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(48),
                          width: getHorizontalSize(156),
                          text: "lbl_next".tr,
                          margin: getMargin(bottom: 76),
                          padding: ButtonPadding.PaddingAll16,
                          fontStyle: ButtonFontStyle.MontserratBold1308,
                          onTap: () {
                            onTapNext();
                          })
                    ]))));
  }

  onTapCheckout() {
    Get.toNamed(
      AppRoutes.iphone14FiftyfiveScreen,
    );
  }

  onTapImgVolume() {
    Get.toNamed(
      AppRoutes.iphone14NinetyoneScreen,
    );
  }

  onTapTxtManagepaymentme() {
    Get.toNamed(
      AppRoutes.iphone14SixtytwoScreen,
    );
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.iphone14FiftysevenScreen,
    );
  }
}
