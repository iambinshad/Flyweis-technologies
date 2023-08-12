import 'controller/iphone_14_120_controller.dart';
import 'models/iphone_14_120_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/app_bar/appbar_image.dart';
import 'package:e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone14120Page extends StatelessWidget {
  Iphone14120Controller controller =
      Get.put(Iphone14120Controller(Iphone14120Model().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(147),
                centerTitle: true,
                title: Container(
                    height: getVerticalSize(122.149994),
                    width: double.maxFinite,
                    child: Stack(children: [
                      AppbarImage(
                          height: getVerticalSize(109),
                          width: getHorizontalSize(306),
                          svgPath: ImageConstant.imgPath1,
                          margin: getMargin(left: 18, right: 65, bottom: 13)),
                      Padding(
                          padding: getPadding(top: 1, bottom: 50),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(52),
                                    width: getHorizontalSize(389),
                                    text: "msg_my_subscriptions".tr,
                                    margin: getMargin(right: 1),
                                    variant: ButtonVariant.FillWhiteA700,
                                    shape: ButtonShape.Square,
                                    padding: ButtonPadding.PaddingAll13,
                                    onTap: () {
                                      // onTapMy();
                                    }),
                                Padding(
                                    padding: getPadding(top: 4),
                                    child: SizedBox(
                                        width: double.maxFinite,
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.teal400)))
                              ])),
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                              padding:
                                  getPadding(left: 30, top: 92, right: 107),
                              child: Text("msg_why_should_subscribe".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold20Gray800)))
                    ])),
                styleType: Style.bgFillTeal400),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 9, right: 20, bottom: 9),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 10),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCheckmarkGreen9007x10,
                                height: getVerticalSize(7),
                                width: getHorizontalSize(10),
                                margin: getMargin(top: 9, bottom: 7)),
                            Padding(
                                padding: getPadding(left: 10),
                                child: Text("lbl_no_tension".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtPoppinsSemiBold16Gray8007f))
                          ])),
                      Padding(
                          padding: getPadding(left: 10, top: 12),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgCheckmarkGreen9007x10,
                                    height: getVerticalSize(7),
                                    width: getHorizontalSize(10),
                                    margin: getMargin(top: 7, bottom: 9)),
                                Padding(
                                    padding: getPadding(left: 10),
                                    child: Text("msg_zero_delivery_fee".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsSemiBold16Gray8007f))
                              ])),
                      Padding(
                          padding: getPadding(left: 10, top: 10),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgCheckmarkGreen9007x10,
                                    height: getVerticalSize(7),
                                    width: getHorizontalSize(10),
                                    margin: getMargin(top: 7, bottom: 9)),
                                Padding(
                                    padding: getPadding(left: 10),
                                    child: Text("msg_customizable_delivery".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsSemiBold16Gray8007f))
                              ])),
                      CustomButton(
                          height: getVerticalSize(43),
                          text: "msg_search_products".tr,
                          margin: getMargin(left: 10, top: 59, bottom: 5),
                          shape: ButtonShape.CustomBorderTL22,
                          padding: ButtonPadding.PaddingAll13,
                          fontStyle: ButtonFontStyle.MontserratBold1321)
                    ]))));
  }

  onTapMy() {
    Get.toNamed(
      AppRoutes.iphone14FiftythreeScreen,
    );
  }
}
