import '../iphone_14_eightysix_screen/widgets/listcheckmark_item_widget.dart';
import 'controller/iphone_14_eightysix_controller.dart';
import 'models/listcheckmark_item_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Iphone14EightysixScreen extends GetWidget<Iphone14EightysixController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: getPadding(bottom: 70),
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
                                    svgPath:
                                        ImageConstant.imgArrowleftBlack900)),
                            onTap: () {
                              onTapCheckout();
                            }),
                        Container(
                            height: getVerticalSize(24),
                            width: getHorizontalSize(315),
                            margin: getMargin(top: 9),
                            child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
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
                                      svgPath:
                                          ImageConstant.imgContrastWhiteA700,
                                      height: getSize(24),
                                      width: getSize(24),
                                      alignment: Alignment.centerLeft)
                                ])),
                        Padding(
                          padding: getPadding(left: 30, top: 10, right: 23),
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
                                      style: AppStyle.txtPoppinsRegular1121),
                                ),
                              ]),
                        ),
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
                                    svgPath: ImageConstant.imgFolderWhiteA700,
                                    height: getVerticalSize(31),
                                    width: getHorizontalSize(53),
                                    margin: getMargin(left: 11),
                                    onTap: () {
                                      onTapImgFolder();
                                    }),
                                CustomImageView(
                                    svgPath: ImageConstant.imgCallGreen900,
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
                                    child: Text("msg_manage_payment_method".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular1168),
                                  ),
                                ),
                              ]),
                        ),
                        Container(
                          width: getHorizontalSize(349),
                          margin: getMargin(left: 20, top: 20, right: 20),
                          padding: getPadding(
                              left: 60, top: 9, right: 60, bottom: 9),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgGroup48095557,
                                  height: getVerticalSize(119),
                                  width: getHorizontalSize(120),
                                  alignment: Alignment.center),
                              Padding(
                                padding: getPadding(top: 15, right: 23),
                                child: Row(children: [
                                  Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_wallet_balance".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsBold1228),
                                          Text("lbl_02".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsMedium1228),
                                        ]),
                                  ),
                                  Padding(
                                    padding: getPadding(left: 18),
                                    child: SizedBox(
                                      height: getVerticalSize(38),
                                      child: VerticalDivider(
                                        width: getHorizontalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.gray800,
                                        indent: getHorizontalSize(1),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(left: 18, top: 2),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_expire_date".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsBold1228),
                                          Text("lbl_18_04_2023".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsMedium1228)
                                        ]),
                                  ),
                                ]),
                              ),
                              GestureDetector(
                                onTap: () {
                                  onTapTxtNext();
                                },
                                child: Padding(
                                  padding: getPadding(bottom: 3),
                                  child: Text(
                                    "lbl_add_more".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratBold1308,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: getPadding(top: 9, right: 19),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomButton(
                                    height: getVerticalSize(36),
                                    width: getHorizontalSize(77),
                                    text: "lbl_month".tr,
                                    variant: ButtonVariant.OutlineBlack900,
                                    shape: ButtonShape.CustomBorderBL10,
                                    padding: ButtonPadding.PaddingT9,
                                    fontStyle:
                                        ButtonFontStyle.MulishRomanBold1417,
                                    suffixWidget: CustomImageView(
                                        svgPath: ImageConstant.imgVector36),
                                  ),
                                  CustomButton(
                                    height: getVerticalSize(36),
                                    width: getHorizontalSize(75),
                                    text: "lbl_filters".tr,
                                    margin: getMargin(left: 8),
                                    variant: ButtonVariant.OutlineBlack900,
                                    shape: ButtonShape.CustomBorderBL10,
                                    padding: ButtonPadding.PaddingT9,
                                    fontStyle:
                                        ButtonFontStyle.MulishRomanBold1417,
                                    suffixWidget: CustomImageView(
                                        svgPath: ImageConstant.imgVector36),
                                  ),
                                ]),
                          ),
                        ),
                        Container(
                            margin: getMargin(left: 20, top: 9, right: 20),
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder10),
                            child: Obx(() => ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return SizedBox(height: getVerticalSize(9));
                                },
                                itemCount: controller.iphone14EightysixModelObj
                                    .value.listcheckmarkItemList.value.length,
                                itemBuilder: (context, index) {
                                  ListcheckmarkItemModel model = controller
                                      .iphone14EightysixModelObj
                                      .value
                                      .listcheckmarkItemList
                                      .value[index];
                                  return ListcheckmarkItemWidget(model);
                                }))),
                        CustomButton(
                          height: getVerticalSize(48),
                          width: getHorizontalSize(156),
                          text: "lbl_next".tr,
                          margin: getMargin(top: 30),
                          padding: ButtonPadding.PaddingAll16,
                          fontStyle: ButtonFontStyle.MontserratBold1308,
                          onTap: () {
                            onTapNextone();
                          },
                        ),
                      ]),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
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

  onTapImgFolder() {
    Get.toNamed(
      AppRoutes.iphone14FiftysixScreen,
    );
  }

  onTapTxtManagepaymentme() {
    Get.toNamed(
      AppRoutes.iphone14SixtytwoScreen,
    );
  }

  onTapTxtNext() {
    Get.toNamed(
      AppRoutes.iphone14EightysevenScreen,
    );
  }

  onTapNextone() {
    Get.toNamed(
      AppRoutes.iphone14EightysevenScreen,
    );
  }
}
