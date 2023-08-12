import 'package:e_commerce/presentation/iphone_14_117_container_page/controller/provider.dart';
import 'package:e_commerce/presentation/iphone_14_fiftythree_screen/controller/provider.dart';
import 'package:provider/provider.dart';

import '../iphone_14_fiftytwo_screen/widgets/gridvector_item_widget.dart';
import 'controller/iphone_14_fiftytwo_controller.dart';
import 'models/gridvector_item_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/app_bar/appbar_image.dart';
import 'package:e_commerce/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Iphone14FiftytwoScreen extends GetWidget<Iphone14FiftytwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(52),
            centerTitle: true,
            title: Container(
              padding: getPadding(left: 9, top: 11, right: 9, bottom: 11),
              decoration: AppDecoration.fillWhiteA700,
              child: Row(children: [
                AppbarImage(
                    height: getVerticalSize(26),
                    width: getHorizontalSize(25),
                    svgPath: ImageConstant.imgArrowleftBlack900,
                    margin: getMargin(top: 2, bottom: 1),
                    onTap: () {
                      onTapArrowleft();
                    }),
                AppbarSubtitle1(
                  text: "lbl_vegetables".tr,
                  margin: getMargin(left: 16, top: 3, right: 228),
                ),
              ]),
            ),
            styleType: Style.bgFillWhiteA700),
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: getPadding(top: 10, bottom: 10),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                padding: getPadding(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: getVerticalSize(45),
                      width: getHorizontalSize(309),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.green.shade800)),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: getPadding(left: 16, bottom: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgSearch,
                                  height: getSize(15),
                                  width: getSize(15),
                                  margin: getMargin(bottom: 6)),
                              Padding(
                                padding: getPadding(left: 16),
                                child: Text("lbl_search_products".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular1403),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgFilter,
                      height: getVerticalSize(18),
                      width: getHorizontalSize(20),
                      margin: getMargin(top: 11, bottom: 11),
                      onTap: () => onTapImgFilter(context),
                    )
                  ],
                ),
              ),
              Container(
                  width: double.maxFinite,
                  margin: getMargin(top: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 50,
                              width: 80,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.green[900] ?? Colors.black,
                                    width: 2.0,
                                    // Customize the underline width here
                                  ),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "lbl_all".tr,
                                ),
                              )
                              // CustomButton(
                              //     height: getVerticalSize(50),
                              //     width: getHorizontalSize(130),
                              //     text: "lbl_all".tr,
                              //     padding: ButtonPadding.PaddingAll16,
                              //     fontStyle: ButtonFontStyle.PoppinsMedium14),

                              ),
                          Container(
                              width: getHorizontalSize(130),
                              padding: getPadding(
                                  left: 4, top: 13, right: 4, bottom: 13),
                              decoration: AppDecoration.txtFillWhiteA700,
                              child: Text("lbl_green_vegetable".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium14Gray90002
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.14)))),
                          CustomButton(
                              height: getVerticalSize(50),
                              width: getHorizontalSize(130),
                              text: "lbl_green_fruits".tr,
                              variant: ButtonVariant.FillWhiteA700,
                              shape: ButtonShape.Square,
                              padding: ButtonPadding.PaddingAll16,
                              fontStyle: ButtonFontStyle.PoppinsMedium14)
                        ]),
                  )),
              GestureDetector(
                onTap: ()async{
                await  Provider.of<ProductProvider>(context,listen: false).fetchProductDetails(context);
                  onTapview();
                },
                child: Padding(
                  padding: getPadding(left: 26, top: 21, right: 26),
                  child: Obx(
                    () => GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: getVerticalSize(190),
                                crossAxisCount: 2,
                                mainAxisSpacing: getHorizontalSize(30),
                                crossAxisSpacing: getHorizontalSize(30)),
                        physics: BouncingScrollPhysics(),
                        itemCount: controller.iphone14FiftytwoModelObj.value
                            .gridvectorItemList.value.length,
                        itemBuilder: (context, index) {
                          GridvectorItemModel model = controller
                              .iphone14FiftytwoModelObj
                              .value
                              .gridvectorItemList
                              .value[index];
                          return GridvectorItemWidget(model);
                        }),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  void onTapImgFilter(context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(children: [
                    Text("lbl_reset".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular169),
                    Padding(
                        padding: getPadding(left: 113),
                        child: Text("lbl_filter".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium169))
                  ]),
                ),
                Padding(
                  padding: getPadding(top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("lbl_price".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular169Black900),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowdownGreen900,
                                  height: getVerticalSize(7),
                                  width: getHorizontalSize(13),
                                  margin: getMargin(top: 0, bottom: 15))
                            ]),
                      ),
                      Padding(
                        padding: getPadding(top: 11),
                        child: Divider(
                            height: getVerticalSize(1),
                            thickness: getVerticalSize(1),
                            color: ColorConstant.green900),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onTap: () {
                            onTapSpecialoffers();
                          },
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_special_offers".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtPoppinsRegular169Black900),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowdownGreen900,
                                    height: getVerticalSize(7),
                                    width: getHorizontalSize(13),
                                    margin: getMargin(top: 0, bottom: 15))
                              ]),
                        ),
                      ),
                      Padding(
                        padding: getPadding(top: 11),
                        child: Divider(
                            height: getVerticalSize(1),
                            thickness: getVerticalSize(1),
                            color: ColorConstant.green900),
                      ),
                      Padding(
                        padding: getPadding(top: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding: getPadding(left: 24, right: 25),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_brand".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsRegular169Black900),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgArrowup,
                                          height: getVerticalSize(7),
                                          width: getHorizontalSize(13),
                                          margin: getMargin(top: 12, bottom: 5))
                                    ])),
                            Container(
                                margin: getMargin(top: 7),
                                padding: getPadding(left: 23, right: 23),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        Container(
                                            height: getSize(15),
                                            width: getSize(15),
                                            margin:
                                                getMargin(top: 1, bottom: 3),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgVector,
                                                      height: getSize(15),
                                                      width: getSize(15),
                                                      alignment:
                                                          Alignment.center),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          height: getSize(15),
                                                          width: getSize(15),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgTrashGreen90022x22,
                                                                    height:
                                                                        getSize(
                                                                            15),
                                                                    width:
                                                                        getSize(
                                                                            15),
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgCloseGreen90011x11,
                                                                    height:
                                                                        getSize(
                                                                            11),
                                                                    width:
                                                                        getSize(
                                                                            11),
                                                                    alignment:
                                                                        Alignment
                                                                            .center)
                                                              ])))
                                                ])),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtBrucoffee();
                                            },
                                            child: Padding(
                                                padding: getPadding(left: 25),
                                                child: Text("lbl_bru_coffee".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular1314)))
                                      ]),
                                      Padding(
                                          padding: getPadding(top: 7),
                                          child: Row(children: [
                                            Container(
                                                height: getSize(15),
                                                width: getSize(15),
                                                margin: getMargin(
                                                    top: 1, bottom: 3),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgVector,
                                                          height: getSize(15),
                                                          width: getSize(15),
                                                          alignment:
                                                              Alignment.center),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgTrashGreen90022x22,
                                                          height: getSize(15),
                                                          width: getSize(15),
                                                          alignment:
                                                              Alignment.center)
                                                    ])),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtNescafe();
                                                },
                                                child: Padding(
                                                    padding:
                                                        getPadding(left: 25),
                                                    child: Text(
                                                        "lbl_nescafe".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular1314)))
                                          ]))
                                    ])),
                            Padding(
                              padding: getPadding(top: 11),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.green900),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(left: 24, right: 25, top: 15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_price_range".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsRegular169Black900),
                        CustomImageView(
                            svgPath: ImageConstant.imgArrowdownGreen900,
                            height: getVerticalSize(7),
                            width: getHorizontalSize(13),
                            margin: getMargin(top: 5, bottom: 15)),
                      ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: getPadding(top: 11),
                  child: Divider(
                      height: getVerticalSize(1),
                      thickness: getVerticalSize(2),
                      color: ColorConstant.green900),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // onTapImgFilter() {
  //   Get.toNamed(
  //     AppRoutes.frame48095626Screen,
  //   );
  // }
  onTapPrice() {
    Get.toNamed(
      AppRoutes.iphone14FiftytwoScreen,
    );
  }

  onTapSpecialoffers() {
    Get.toNamed(
      AppRoutes.iphone14FiftytwoScreen,
    );
  }

  onTapTxtBrucoffee() {
    Get.toNamed(
      AppRoutes.iphone14FiftytwoScreen,
    );
  }

  onTapTxtNescafe() {
    Get.toNamed(
      AppRoutes.iphone14FiftytwoScreen,
    );
  }

  onTapArrowleft() {
    Get.back(
        // AppRoutes.iphone14FiftythreeScreen,
        );
  }

  onTapview() {
    Get.toNamed(
      AppRoutes.iphone14FiftythreeScreen,
    );
  }
}
