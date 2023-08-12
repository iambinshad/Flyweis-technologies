import '../iphone_14_eightyseven_screen/widgets/listdiscfive1_item_widget.dart';
import '../iphone_14_eightyseven_screen/widgets/listdiscthree1_item_widget.dart';
import 'controller/iphone_14_eightyseven_controller.dart';
import 'models/listdiscfive1_item_model.dart';
import 'models/listdiscthree1_item_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Iphone14EightysevenScreen
    extends GetWidget<Iphone14EightysevenController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: getVerticalSize(53),
                            width: getHorizontalSize(389),
                            child: Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                      padding: getPadding(left: 20),
                                      child: Text("lbl_wallet".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsMedium1462))),
                              CustomButton(
                                  margin: getMargin(right: 150),
                                  height: getVerticalSize(52),
                                  width: getHorizontalSize(389),
                                  text: "msg_add_money_in_wallet".tr,
                                  variant: ButtonVariant.FillWhiteA700,
                                  shape: ButtonShape.Square,
                                  prefixWidget: Container(
                                      margin: getMargin(right: 15),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowleftBlack900)),
                                  onTap: () {
                                    onTapAddmoneyin();
                                  },
                                  alignment: Alignment.center)
                            ])),
                        Container(
                            margin: getMargin(left: 10, top: 9, right: 10),
                            padding: getPadding(
                                left: 20, top: 19, right: 20, bottom: 19),
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 2),
                                      child: Text("msg_amount_to_be_paid".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsRegular14Black900)),
                                  Padding(
                                      padding: getPadding(bottom: 1),
                                      child: Text("lbl_7000".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsSemiBold14Black900))
                                ])),
                        Container(
                            margin: getMargin(left: 10, top: 20, right: 10),
                            padding: getPadding(
                                left: 10, top: 11, right: 10, bottom: 11),
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("msg_suggested_for_you".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsSemiBold15),
                                  Padding(
                                      padding: getPadding(top: 8),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: ColorConstant.gray800)),
                                  Padding(
                                      padding: getPadding(top: 9, bottom: 7),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: getPadding(bottom: 7),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgDisc1,
                                                          height: getSize(24),
                                                          width: getSize(24)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgDisc2,
                                                          height: getSize(24),
                                                          width: getSize(24),
                                                          margin:
                                                              getMargin(top: 42)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgDisc2,
                                                          height: getSize(24),
                                                          width: getSize(24),
                                                          margin:
                                                              getMargin(top: 33))
                                                    ])),
                                            Padding(
                                                padding:
                                                    getPadding(left: 6, top: 2),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                          "msg_kotak_mahindra_bank"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtNunitoSansRegular1456),
                                                      Text(
                                                          "msg_account_no_xxxx"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtNunitoSansRegular1248),
                                                      Padding(
                                                          padding:
                                                              getPadding(top: 21),
                                                          child: Text(
                                                              "lbl_google_pay_upi"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign.left,
                                                              style: AppStyle
                                                                  .txtNunitoSansRegular1456)),
                                                      Text(
                                                          "msg_tejasaher67_gmail_com"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtNunitoSansRegular1248),
                                                      Padding(
                                                          padding:
                                                              getPadding(top: 19),
                                                          child: Text(
                                                              "lbl_pay_pal".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign.left,
                                                              style: AppStyle
                                                                  .txtNunitoSansRegular1456)),
                                                      Text(
                                                          "msg_tejasaher67_gmail_com"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtNunitoSansRegular1248)
                                                    ])),
                                            Spacer(),
                                            Padding(
                                                padding: getPadding(top: 4),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgTicket,
                                                          height:
                                                              getVerticalSize(27),
                                                          width:
                                                              getHorizontalSize(
                                                                  59)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgGooglepay,
                                                          height: getSize(36),
                                                          width: getSize(36),
                                                          margin: getMargin(
                                                              top: 32, right: 5)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgGooglepay2,
                                                          height: getSize(36),
                                                          width: getSize(36),
                                                          margin: getMargin(
                                                              top: 21, right: 5))
                                                    ]))
                                          ]))
                                ])),
                        Container(
                            margin: getMargin(left: 10, top: 10, right: 10),
                            padding: getPadding(
                                left: 10, top: 11, right: 10, bottom: 11),
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("msg_all_other_option".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsSemiBold15),
                                  Padding(
                                      padding: getPadding(top: 8),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: ColorConstant.gray800)),
                            SizedBox(height: 20,),
                            Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                              CustomImageView(
                               svgPath: ImageConstant.imgDisc3,
                               height: getSize(
                                24,
                               ),
                               width: getSize(
                                24,
                               ),
                               margin: getMargin(
                                top: 4,
                                bottom: 4,
                               ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: 10),
                                child: Text('UPI',style: TextStyle(
                                 fontSize: 15
                                ),),
                              ),
                              Padding(
                               padding: getPadding(
                                left: 13,
                                top: 4,
                                bottom: 5,
                               ),
                              ),
                              Spacer(),
                              CustomImageView(
                               svgPath: ImageConstant.imgBhimupi1,
                               height: getSize(
                                33,
                               ),
                               width: getSize(
                                33,
                               ),
                              ),
                             ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                              CustomImageView(
                               svgPath: ImageConstant.imgDisc3,
                               height: getSize(
                                24,
                               ),
                               width: getSize(
                                24,
                               ),
                               margin: getMargin(
                                top: 4,
                                bottom: 4,
                               ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: 10),
                                child: Text('Wallet',style: TextStyle(
                                 fontSize: 15
                                ),),
                              ),
                              Padding(
                               padding: getPadding(
                                left: 13,
                                top: 4,
                                bottom: 5,
                               ),
                              ),
                              Spacer(),
                              CustomImageView(
                               svgPath: ImageConstant.imgWallet1,
                               height: getSize(
                                33,
                               ),
                               width: getSize(
                                33,
                               ),
                              ),
                             ],
                            ),
                                 SizedBox(height: 20,),
                            Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                              CustomImageView(
                               svgPath: ImageConstant.imgDisc3,
                               height: getSize(
                                24,
                               ),
                               width: getSize(
                                24,
                               ),
                               margin: getMargin(
                                top: 4,
                                bottom: 4,
                               ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: 10),
                                child: Text('Credit/ Debit/ ATM Card',style: TextStyle(
                                 fontSize: 15
                                ),),
                              ),
                              Padding(
                               padding: getPadding(
                                left: 13,
                                top: 4,
                                bottom: 5,
                               ),
                              ),
                              Spacer(),
                              CustomImageView(
                               imagePath: ImageConstant.imgCreditcard1,
                               height: getSize(
                                35,
                               ),
                               width: getSize(
                                33,
                               ),
                              ),
                             ],
                            ),
                                 SizedBox(height: 20,),
                            Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                              CustomImageView(
                               svgPath: ImageConstant.imgDisc3,
                               height: getSize(
                                24,
                               ),
                               width: getSize(
                                24,
                               ),
                               margin: getMargin(
                                top: 4,
                                bottom: 4,
                               ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: 10),
                                child: Column(
                                  children: [
                                    Text('Pay after Service',style: TextStyle(
                                     fontSize: 15
                                    ),),
                                   Text('(Cash/Paytm/PhonePe/Gpay)',style: TextStyle(
                                     fontSize: 10
                                    ),),
                                  ],
                                ),
                              ),
                              Padding(
                               padding: getPadding(
                                left: 13,
                                top: 4,
                                bottom: 5,
                               ),
                              ),
                              Spacer(),
                              CustomImageView(
                               imagePath: ImageConstant.imgpay,
                               height: getSize(
                                20,
                               ),
                               width: getSize(
                                33,
                               ),
                              ),
                             ],
                            ),

                                ])),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding:
                                    getPadding(left: 102, top: 26, bottom: 5),
                                child: Text("msg_100_safe_and_secure".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtNunitoSansBold10.copyWith(
                                        letterSpacing: getHorizontalSize(0.2)))))
                      ])),
            ),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(50),
                text: "lbl_pay2".tr,
                margin: getMargin(left: 30, right: 30, bottom: 44),
                variant: ButtonVariant.OutlineBlack90033,
                shape: ButtonShape.CustomBorderBL10,
                padding: ButtonPadding.PaddingAll13,
                fontStyle: ButtonFontStyle.FuturaBTBold20,
                onTap: () {
                  onTapPay();
                })));
  }

  onTapAddmoneyin() {
    Get.toNamed(
      AppRoutes.iphone14FiftysixScreen,
    );
  }

  onTapPay() {
    Get.toNamed(
      AppRoutes.iphone14FortytwoScreen,
    );
  }
}
