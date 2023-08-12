import 'controller/iphone_14_119_controller.dart';
import 'models/iphone_14_119_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone14119Page extends StatelessWidget {
  Iphone14119Controller controller =
      Get.put(Iphone14119Controller(Iphone14119Model().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA700,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(top: 9, bottom: 39),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(52),
                                    text: "lbl_my_schedule".tr,
                                    variant: ButtonVariant.FillWhiteA700,
                                    shape: ButtonShape.Square,
                                    padding: ButtonPadding.PaddingAll13,
                                    onTap: () {
                                      // onTapMyschedule();
                                    }),
                                Padding(
                                    padding: getPadding(top: 4),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.teal400)),
                                Container(
                                    width: double.maxFinite,
                                    margin: getMargin(top: 5),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              padding: getPadding(
                                                  left: 8,
                                                  top: 3,
                                                  right: 8,
                                                  bottom: 3),
                                              decoration: AppDecoration
                                                  .outlineGreen9001,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                28),
                                                        margin: getMargin(
                                                            bottom: 3),
                                                        child: Text(
                                                            "lbl_thu_1".tr,
                                                            maxLines: null,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .txtPoppinsBold14
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.14))))
                                                  ])),
                                          Container(
                                              padding: getPadding(
                                                  left: 16,
                                                  top: 4,
                                                  right: 16,
                                                  bottom: 4),
                                              decoration:
                                                  AppDecoration.fillWhiteA700,
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                17),
                                                        margin: getMargin(
                                                            bottom: 1),
                                                        child: Text(
                                                            "lbl_fri_2".tr,
                                                            maxLines: null,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .txtPoppinsMedium14Gray90002
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.14))))
                                                  ])),
                                          Container(
                                              padding: getPadding(
                                                  left: 12,
                                                  top: 4,
                                                  right: 12,
                                                  bottom: 4),
                                              decoration:
                                                  AppDecoration.fillWhiteA700,
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                24),
                                                        child: Text(
                                                            "lbl_sat_3".tr,
                                                            maxLines: null,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .txtPoppinsMedium14Gray90002
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.14))))
                                                  ])),
                                          Container(
                                              padding: getPadding(
                                                  left: 11,
                                                  top: 4,
                                                  right: 11,
                                                  bottom: 4),
                                              decoration:
                                                  AppDecoration.fillWhiteA700,
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                27),
                                                        child: Text(
                                                            "lbl_sun_4".tr,
                                                            maxLines: null,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .txtPoppinsMedium14Gray90002
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.14))))
                                                  ])),
                                          Container(
                                              padding: getPadding(
                                                  left: 9,
                                                  top: 5,
                                                  right: 9,
                                                  bottom: 5),
                                              decoration:
                                                  AppDecoration.fillWhiteA700,
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                31),
                                                        child: Text(
                                                            "lbl_mon_5".tr,
                                                            maxLines: null,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .txtPoppinsMedium14Gray90002
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.14))))
                                                  ])),
                                          Container(
                                              padding: getPadding(
                                                  left: 11,
                                                  top: 5,
                                                  right: 11,
                                                  bottom: 5),
                                              decoration:
                                                  AppDecoration.fillWhiteA700,
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                26),
                                                        child: Text(
                                                            "lbl_tue_6".tr,
                                                            maxLines: null,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .txtPoppinsMedium14Gray90002
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.14))))
                                                  ])),
                                          Container(
                                              padding: getPadding(
                                                  left: 8,
                                                  top: 4,
                                                  right: 8,
                                                  bottom: 4),
                                              decoration:
                                                  AppDecoration.fillWhiteA700,
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                33),
                                                        margin: getMargin(
                                                            bottom: 1),
                                                        child: Text(
                                                            "lbl_wed_7".tr,
                                                            maxLines: null,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .txtPoppinsMedium14Gray90002
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.14))))
                                                  ])),
                                          Container(
                                              width: getHorizontalSize(49),
                                              decoration:
                                                  AppDecoration.fillWhiteA700,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                27),
                                                        margin: getMargin(
                                                            top: 4, bottom: 5),
                                                        child: Text(
                                                            "lbl_thu_8".tr,
                                                            maxLines: null,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .txtPoppinsMedium14Gray90002
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.14)))),
                                                    Container(
                                                        margin:
                                                            getMargin(left: 11),
                                                        padding: getPadding(
                                                            top: 4, bottom: 4),
                                                        decoration:
                                                            AppDecoration
                                                                .fillWhiteA700,
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          1),
                                                                  child: Text(
                                                                      "lbl_fri_9"
                                                                          .tr,
                                                                      maxLines:
                                                                          null,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: AppStyle
                                                                          .txtPoppinsMedium14Gray90002
                                                                          .copyWith(
                                                                              letterSpacing: getHorizontalSize(0.14))))
                                                            ]))
                                                  ]))
                                        ])),
                                CustomImageView(
                                    svgPath: ImageConstant.imgGroup48095656,
                                    height: getSize(125),
                                    width: getSize(125),
                                    margin: getMargin(top: 97)),
                                Padding(
                                    padding: getPadding(top: 55),
                                    child: Text("msg_no_orders_scheduled".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsSemiBold20Gray800)),
                                Container(
                                    width: getHorizontalSize(250),
                                    margin: getMargin(top: 10),
                                    child: Text("msg_look_s_like_you".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtPoppinsSemiBold16)),
                                CustomButton(
                                    height: getVerticalSize(43),
                                    width: getHorizontalSize(209),
                                    text: "lbl_order_now".tr,
                                    margin: getMargin(top: 30, bottom: 5),
                                    shape: ButtonShape.CustomBorderTL22,
                                    padding: ButtonPadding.PaddingAll13,
                                    fontStyle:
                                        ButtonFontStyle.MontserratBold1321)
                              ]))
                    ]))));
  }

  onTapMyschedule() {
    Get.toNamed(
      AppRoutes.iphone14FiftythreeScreen,
    );
  }
}
