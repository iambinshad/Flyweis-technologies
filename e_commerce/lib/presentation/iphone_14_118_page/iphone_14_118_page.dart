import '../iphone_14_118_page/widgets/listprice_item_widget.dart';
import 'controller/iphone_14_118_controller.dart';
import 'models/iphone_14_118_model.dart';
import 'models/listprice_item_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone14118Page extends StatelessWidget {
  Iphone14118Controller controller =
      Get.put(Iphone14118Controller(Iphone14118Model().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: SingleChildScrollView(

              child: Container(
                  width: double.maxFinite,
                  decoration: AppDecoration.fillWhiteA700,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomButton(
                                  height: getVerticalSize(52),
                                  text: "lbl_my_wallet".tr,
                                  variant: ButtonVariant.FillWhiteA700,
                                  shape: ButtonShape.Square,
                                  padding: ButtonPadding.PaddingAll13,
                                  onTap: () {
                                    // onTapMywallet();
                                  }),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      padding: getPadding(
                                          left: 47,
                                          top: 15,
                                          right: 47,
                                          bottom: 15),
                                      decoration: AppDecoration.fillGreen900,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 13),
                                                child: Text(
                                                    "msg_available_balance".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsSemiBold20)),
                                            Padding(
                                                padding: getPadding(top: 10),
                                                child: Text("lbl_0_00".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterExtraBold40
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    1.2)))),
                                            Container(
                                                width: getHorizontalSize(294),
                                                margin: getMargin(top: 9),
                                                child: Text(
                                                    "msg_your_wallet_balance".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .txtPoppinsSemiBold15WhiteA700))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 30, top: 21),
                                      child: Text("lbl_recharge_offers".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsSemiBold20Gray800))),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: getVerticalSize(110),
                                  child: Obx(
                                    () => ListView.separated(
                                        padding: getPadding(left: 20, top: 6),
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(10));
                                        },
                                        itemCount: controller.iphone14118ModelObj
                                            .value.listpriceItemList.value.length,
                                        itemBuilder: (context, index) {
                                          ListpriceItemModel model = controller
                                              .iphone14118ModelObj
                                              .value
                                              .listpriceItemList
                                              .value[index];
                                          return ListpriceItemWidget(model);
                                        }),
                                  ),
                                ),
                              ),
                              Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: getMargin(top: 20),
                                  color: ColorConstant.whiteA700,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: ColorConstant.green900,
                                          width: getHorizontalSize(1)),
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Container(
                                      height: getVerticalSize(56),
                                      width: getHorizontalSize(330),
                                      padding: getPadding(
                                          left: 22,
                                          top: 12,
                                          right: 22,
                                          bottom: 12),
                                      decoration: AppDecoration.outlineGreen900
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding: getPadding(top: 2),
                                                    child: Text("lbl_10002".tr,
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle
                                                            .txtFuturaBTBold20
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.2))))),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding: getPadding(left: 24),
                                                    child: SizedBox(
                                                        height:
                                                            getVerticalSize(29),
                                                        child: VerticalDivider(
                                                            width:
                                                                getHorizontalSize(
                                                                    2),
                                                            thickness:
                                                                getVerticalSize(
                                                                    2),
                                                            color: ColorConstant
                                                                .green900))))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      margin: getMargin(left: 30, top: 11),
                                      padding: getPadding(top: 8, bottom: 8),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                                width: getHorizontalSize(66),
                                                padding: getPadding(
                                                    left: 8,
                                                    top: 9,
                                                    right: 8,
                                                    bottom: 9),
                                                decoration: AppDecoration
                                                    .txtOutlineGreen900
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .txtRoundedBorder18),
                                                child: Text("lbl_100".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtFuturaBTMedium15
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.15)))),
                                            Container(
                                                width: getHorizontalSize(68),
                                                margin: getMargin(left: 20),
                                                padding: getPadding(all: 9),
                                                decoration: AppDecoration
                                                    .txtOutlineGreen900
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .txtRoundedBorder18),
                                                child: Text("lbl_200".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtFuturaBTMedium15
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.15)))),
                                            Container(
                                                width: getHorizontalSize(68),
                                                margin: getMargin(left: 20),
                                                padding: getPadding(all: 9),
                                                decoration: AppDecoration
                                                    .txtOutlineGreen900
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .txtRoundedBorder18),
                                                child: Text("lbl_5002".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtFuturaBTMedium15
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.15)))),
                                            Container(
                                                width: getHorizontalSize(76),
                                                margin: getMargin(left: 20),
                                                padding: getPadding(
                                                    left: 8,
                                                    top: 9,
                                                    right: 8,
                                                    bottom: 9),
                                                decoration: AppDecoration
                                                    .txtOutlineGreen900
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .txtRoundedBorder18),
                                                child: Text("lbl_10003".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtFuturaBTMedium15
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.15)))),
                                            Container(
                                                height: getVerticalSize(37),
                                                width: getHorizontalSize(2),
                                                margin: getMargin(left: 20),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(1)),
                                                    border: Border.all(
                                                        color: ColorConstant
                                                            .green900,
                                                        width: getHorizontalSize(
                                                            1))))
                                          ]))),
                              Container(
                                  height: getVerticalSize(43),
                                  width: getHorizontalSize(228),
                                  margin: getMargin(top: 11),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgButton,
                                            height: getVerticalSize(43),
                                            width: getHorizontalSize(228),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text("lbl_add_money".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratBold1321))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 21, bottom: 5),
                                  child: Text("msg_transections_history".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtPoppinsSemiBold20Green900))
                            ])
                      ])),
            )));
  }

  onTapMywallet() {
    Get.toNamed(
      AppRoutes.iphone14FiftythreeScreen,
    );
  }
}
