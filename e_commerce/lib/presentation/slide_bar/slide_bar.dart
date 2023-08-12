import 'package:e_commerce/widgets/custom_button.dart';

import 'controller/iphone_14_sixtyfour_controller.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class Iphone14SixtyfourScreen extends GetWidget<Iphone14SixtyfourController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: getHorizontalSize(314),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: getVerticalSize(214),
                  width: getHorizontalSize(314),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse111,
                          height: getVerticalSize(214),
                          width: getHorizontalSize(314),
                          alignment: Alignment.center),
                      Align(
                        alignment: Alignment.topCenter,
                        child: GestureDetector(
                          onTap: () {
                            onTapColumnellipse10();
                          },
                          child: Padding(
                            padding: getPadding(left: 64, top: 30, right: 64),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse10460x60,
                                    height: getSize(60),
                                    width: getSize(60),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(30))),
                                Padding(
                                    padding: getPadding(top: 10),
                                    child: Text("lbl_lorem_ipsum".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMontserratBold24)),
                                Padding(
                                  padding: getPadding(top: 9),
                                  child: Text("msg_mobile_number_here".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratRegular18),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding: getPadding(left: 43, top: 19, right: 30),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("lbl_address".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtPoppinsMedium20Bluegray90003),
                              CustomImageView(
                                  svgPath: ImageConstant.imgOffer,
                                  height: getSize(25),
                                  width: getSize(25),
                                  margin: getMargin(top: 4))
                            ]))),
                Container(
                    width: getHorizontalSize(167),
                    margin: getMargin(left: 43),
                    child: Text("msg_vindhyagiri_bda".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular14Bluegray90003)),
                GestureDetector(
                    onTap: () {
                      onTapTxtHometwo();
                    },
                    child: Padding(
                        padding: getPadding(left: 43, top: 30),
                        child: Text("lbl_billing_history".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium20Bluegray90003))),
                GestureDetector(
                    onTap: () {
                      onTapTxtBmi();
                    },
                    child: Padding(
                        padding: getPadding(left: 43, top: 17),
                        child: Text("msg_delivered_orders".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium20Bluegray90003))),
                Padding(
                    padding: getPadding(left: 43, top: 20),
                    child: Text("lbl_contact_us".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium20Bluegray90003)),
                GestureDetector(
                  onTap: () {
                    onTapAboutUs();
                  },
                  child: Padding(
                      padding: getPadding(left: 40, top: 19),
                      child: Text("lbl_about_us".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium20Bluegray90003)),
                ),
                GestureDetector(
                  onTap: () {
                    onTapFaq();
                  },
                  child: Padding(
                      padding: getPadding(left: 42, top: 22),
                      child: Text("msg_delete_my_account".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium20Bluegray90003)),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () => onTapRowvolume(context),
                  child: Padding(
                    padding: getPadding(left: 45, bottom: 40),
                    child: Row(children: [
                      CustomIconButton(
                          height: 40,
                          width: 40,
                          padding: IconButtonPadding.PaddingAll10,
                          child: CustomImageView(
                              svgPath: ImageConstant.imgVolumeGreen50)),
                      Padding(
                          padding: getPadding(left: 18, top: 11, bottom: 1),
                          child: Text("lbl_log_out2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold18))
                    ]),
                  ),
                )
              ]),
        ),
      ),
    );
  }

  void onTapRowvolume(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 250,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          padding: getPadding(
            left: 26,
            top: 29,
            right: 26,
            bottom: 9,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_logout".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular18,
              ),
              Padding(
                padding: getPadding(
                  top: 25,
                ),
                child: Text(
                  "msg_are_you_sure_you".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular18,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 6,
                ),
                child: Text(
                  "lbl_logout2".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular18,
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  52,
                ),
                text: "lbl_yes".tr,
                margin: getMargin(
                  left: 1,
                  top: 31,
                  bottom: 5,
                ),
                padding: ButtonPadding.PaddingAll16,
                fontStyle: ButtonFontStyle.InterBold14,
              ),
            ],
          ),
        );
      },
    );
  }

  onTapColumnellipse10() {
    Get.toNamed(
      AppRoutes.iphone14SixtysixScreen,
    );
  }

  onTapFaq() {
    Get.toNamed(
      AppRoutes.iphone14EightynineScreen,
    );
  }

  onTapAboutUs() {
    Get.toNamed(
      AppRoutes.iphone14EightyeightScreen,
    );
  }

  onTapTxtHometwo() {
    Get.toNamed(
      AppRoutes.iphone14SixtyoneScreen,
    );
  }

  onTapTxtBmi() {
    Get.toNamed(
      AppRoutes.iphone14FiftynineScreen,
    );
  }

  // onTapRowvolume() {
  //   Get.toNamed(
  //     AppRoutes.frame48095625Screen,
  //   );
  // }
}
