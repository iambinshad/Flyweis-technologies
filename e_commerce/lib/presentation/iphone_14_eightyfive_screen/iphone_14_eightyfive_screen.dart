import 'controller/iphone_14_eightyfive_controller.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:e_commerce/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class Iphone14EightyfiveScreen extends GetWidget<Iphone14EightyfiveController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            CustomButton(
                margin: getMargin(right: 235),
                height: getVerticalSize(55),
                text: "lbl_return".tr,
                variant: ButtonVariant.FillWhiteA700,
                shape: ButtonShape.Square,
                prefixWidget: Container(
                    margin: getMargin(right: 15),
                    child: CustomImageView(
                        svgPath: ImageConstant.imgArrowleftBlack900)),
                onTap: () {
                  onTapReturn();
                }),
            Container(
              height: getVerticalSize(108),
              width: getHorizontalSize(350),
              margin: getMargin(top: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.green.shade800),
              ),
              child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                // Align(
                //   alignment: Alignment.center,
                //   child: Container(
                //     // decoration: AppDecoration.fillWhiteA700
                //     //     .copyWith(
                //     //         borderRadius: BorderRadiusStyle
                //     //             .roundedBorder5),
                //     child: Column(
                //         mainAxisSize: MainAxisSize.min,
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         children: [
                //           // CustomImageView(
                //           //     svgPath: ImageConstant
                //           //         .imgVectorGreen900333x348,
                //           //     height: getVerticalSize(97),
                //           //     width: getHorizontalSize(349))
                //         ]),
                //   ),
                // ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(left: 9,top: 10),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgVector79x86,
                              height: getVerticalSize(89),
                              width: getHorizontalSize(90),
                              radius:
                                  BorderRadius.circular(getHorizontalSize(18))),
                          Padding(
                            padding: getPadding(left: 9, top: 10, bottom: 18),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("lbl_cauliflower".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular147),
                                  Padding(
                                      padding: getPadding(top: 15),
                                      child: Text("lbl_565_0".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsRegular147))
                                ]),
                          ),
                        ]),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: getPadding(left: 28, top: 39, right: 20),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomIconButton(
                    height: 30,
                    width: 30,
                    margin: getMargin(top: 11, bottom: 11),
                    padding: IconButtonPadding.PaddingAll4,
                    child: CustomImageView(
                        svgPath: ImageConstant.imgCheckmarkGreen5027x27)),
                Expanded(
                  child: Container(
                   height: 50,
                    margin: getMargin(left: 17),
                   decoration: BoxDecoration(
                    color: ColorConstant.green50,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.green.shade800),
                   ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("lbl_not_have_money".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium1378),
                    ),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: getPadding(left: 28, top: 13, right: 20),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                    height: getSize(30),
                    width: getSize(30),
                    margin: getMargin(top: 11, bottom: 11),
                    decoration: BoxDecoration(color: ColorConstant.green50,
                        borderRadius: BorderRadius.circular(10),),),
                Expanded(
                  child: Container(
                   height: 50,
                    margin: getMargin(left: 17),
                   decoration: BoxDecoration(
                    color: ColorConstant.green50,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.green.shade800),
                   ),
                    child: Padding(
                        padding: getPadding(top: 15,left: 15),
                        child: Text("msg_product_not_need".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium1378)),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: getPadding(left: 28, top: 13, right: 20),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                Container(
                    height: getSize(30),
                    width: getSize(30),
                    margin: getMargin(top: 11, bottom: 11),
                    decoration: BoxDecoration(
                        color: ColorConstant.green50,
                    borderRadius: BorderRadius.circular(10))),
                Expanded(
                  child: Container(
                   height: 50,
                    margin: getMargin(left: 17),
                   decoration: BoxDecoration(
                    color: ColorConstant.green50,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.green.shade800),
                   ),
                    child: Padding(
                        padding: getPadding(top: 15, left: 15),
                        child: Text("lbl_mind_changed".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium1378)),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: getPadding(left: 28, top: 13, right: 20),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                    height: getSize(30),
                    width: getSize(30),
                    margin: getMargin(top: 11, bottom: 11),
                    decoration: BoxDecoration(color: ColorConstant.green50,
                    borderRadius: BorderRadius.circular(10)),),
                Expanded(
                  child: Container(
                   height: 50,
                    margin: getMargin(left: 17),
                   decoration: BoxDecoration(
                    color: ColorConstant.green50,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.green.shade800),
                   ),
                    child: Padding(
                        padding: getPadding(top: 15, left: 15),
                        child: Text("msg_got_product_the".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium1378)),
                  ),
                ),
              ]),
            ),
            Spacer(),
            CustomButton(
                height: getVerticalSize(55),
                width: getHorizontalSize(170),
                text: "lbl_return".tr,
                margin: getMargin(bottom: 145),
                shape: ButtonShape.CustomBorderBL10,
                padding: ButtonPadding.PaddingAll13,
                fontStyle: ButtonFontStyle.PoppinsMedium1654,
                onTap: () {
                  onTapReturnone();
                }),
          ]),
        ),
      ),
    );
  }

  onTapReturn() {
    Get.toNamed(
      AppRoutes.iphone14SixtyoneScreen,
    );
  }

  onTapReturnone() {
    Get.toNamed(
      AppRoutes.iphone14SixtyoneScreen,
    );
  }
}
