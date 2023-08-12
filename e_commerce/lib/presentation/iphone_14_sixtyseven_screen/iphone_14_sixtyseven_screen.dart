import 'controller/iphone_14_sixtyseven_controller.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Iphone14SixtysevenScreen extends GetWidget<Iphone14SixtysevenController> {
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
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          onTapEditprofile();
                        },
                        child: Row(
                          children: [
                            Container(
                                margin: getMargin(left: 10),
                                child: CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowleftBlack900)),
                            SizedBox(
                              width: 100,
                            ),
                            Text(
                              'Edit Profile',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            )
                            // CustomButton(
                            //     height: getVerticalSize(52),
                            //     text: "lbl_edit_profile".tr,
                            //     variant: ButtonVariant.FillWhiteA700,
                            //     shape: ButtonShape.Square,
                            //
                            //     onTap: () {
                            //      onTapEditprofile();
                            //     }
                            // ),
                          ],
                        ),
                      ),
                      // CustomButton(
                      //     height: getVerticalSize(52),
                      //     text: "lbl_edit_profile".tr,
                      //     variant: ButtonVariant.FillWhiteA700,
                      //     shape: ButtonShape.Square,
                      //
                      //     onTap: () {
                      //       onTapEditprofile();
                      //     }
                      //     ),
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse104111x111,
                          height: getSize(141),
                          width: getSize(141),
                          radius: BorderRadius.circular(getHorizontalSize(55)),
                          margin: getMargin(top: 28)),
                      Padding(
                          padding: getPadding(top: 19),
                          child: Text("lbl_change_profile".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratBold1361)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 20, top: 25),
                              child: Text("lbl_name".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRegular1361))),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray90001,
                              indent: getHorizontalSize(20),
                              endIndent: getHorizontalSize(20))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 20, top: 63),
                              child: Text("lbl_mobile_number".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRegular1361))),
                      Padding(
                          padding: getPadding(top: 12),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray90001,
                              indent: getHorizontalSize(20),
                              endIndent: getHorizontalSize(20))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 20, top: 63),
                              child: Text("lbl_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRegular1361))),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray90001,
                              indent: getHorizontalSize(20),
                              endIndent: getHorizontalSize(20))),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_update".tr,
                          margin: getMargin(
                              left: 20, top: 86, right: 20, bottom: 5),
                          padding: ButtonPadding.PaddingAll16,
                          fontStyle: ButtonFontStyle.MontserratBold1361Green50)
                    ]))));
  }

  onTapEditprofile() {
    Get.back(
      // AppRoutes.iphone14SixtysixScreen,
    );
  }
}
