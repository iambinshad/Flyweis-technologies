import 'dart:developer';

import 'package:e_commerce/presentation/iphone_14_117_container_page/controller/provider.dart';
import 'package:e_commerce/presentation/iphone_14_fiftythree_screen/controller/provider.dart';
import 'package:e_commerce/presentation/iphone_14_fiftythree_screen/models/product_model.dart';
import 'package:provider/provider.dart';

import '../iphone_14_fiftythree_screen/widgets/listvector2_item_widget.dart';
import 'controller/iphone_14_fiftythree_controller.dart';
import 'models/listvector2_item_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/app_bar/appbar_image.dart';
import 'package:e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:e_commerce/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Iphone14FiftythreeScreen extends GetWidget<Iphone14FiftythreeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(52),
            leadingWidth: 34,
            leading: AppbarImage(
                height: getVerticalSize(26),
                width: getHorizontalSize(25),
                svgPath: ImageConstant.imgArrowleftBlack900,
                margin: getMargin(left: 9, top: 13, bottom: 12),
                onTap: () {
                  onTapArrowleft1();
                }),
            actions: [
              AppbarImage(
                  height: getVerticalSize(19),
                  width: getHorizontalSize(21),
                  svgPath: ImageConstant.imgFavorite,
                  margin: getMargin(left: 17, top: 16, right: 17, bottom: 16))
            ],
            styleType: Style.bgFillWhiteA700),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(top: 10),
            child: Padding(
              padding: getPadding(left: 16, bottom: 5),
              child: Consumer<ProductProvider>(
                builder: (context, value, child) {
                  ProductModel product = value.productDetails!;
                  log(product.id);

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomS(
                          imagePath: product.images[0].img,
                          height: getVerticalSize(324),
                          width: getHorizontalSize(359)),
                      Padding(
                          padding: getPadding(left: 148, top: 14),
                          child: Row(children: [
                            Container(
                                height: getSize(8),
                                width: getSize(8),
                                decoration: BoxDecoration(
                                    color: ColorConstant.green900,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(4)))),
                            Container(
                                height: getSize(8),
                                width: getSize(8),
                                margin: getMargin(left: 11),
                                decoration: BoxDecoration(
                                    color: ColorConstant.green90033,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(4)))),
                            Container(
                                height: getSize(8),
                                width: getSize(8),
                                margin: getMargin(left: 11),
                                decoration: BoxDecoration(
                                    color: ColorConstant.green90033,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(4)))),
                            Container(
                                height: getSize(8),
                                width: getSize(8),
                                margin: getMargin(left: 11),
                                decoration: BoxDecoration(
                                    color: ColorConstant.green90033,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(4))))
                          ])),
                      Padding(
                          padding: getPadding(left: 4, top: 19),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgStar20x20,
                                height: getSize(20),
                                width: getSize(20),
                                margin: getMargin(top: 1, bottom: 1)),
                            Padding(
                                padding: getPadding(left: 9),
                                child: Text(product.numOfReviews.toString(),
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium15)),
                            Padding(
                                padding: getPadding(left: 4, bottom: 1),
                                child: Text("lbl_reviews".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular14))
                          ])),
                      Padding(
                          padding: getPadding(left: 4, top: 9),
                          child: Text(product.name,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium20)),
                      Padding(
                          padding: getPadding(left: 4, top: 6),
                          child: Text(product.description,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular1295)),
                      Padding(
                          padding: getPadding(left: 4),
                          child: Text(product.id,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular1295)),
                      Padding(
                          padding: getPadding(left: 4),
                          child: Text("msg_industry_s_standard".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular1295)),
                      Padding(
                          padding: getPadding(left: 4, top: 7, right: 20),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("\$${product.price.toString()}",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium2651),
                                Padding(
                                    padding: getPadding(
                                        left: 14, top: 12, bottom: 7),
                                    child: Text("msg_include_gst_10".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular1295)),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 10, bottom: 8),
                                    child: Text(product.size,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium1387))
                              ])),
                      Padding(
                          padding: getPadding(left: 5, top: 18),
                          child: Text('',
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium1295)),
                      Padding(
                          padding: getPadding(left: 5, top: 9, right: 40),
                          child: Row(children: [
                            Container(
                                height: getSize(32),
                                width: getSize(32),
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgCamera,
                                          height: getSize(32),
                                          width: getSize(32),
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                              padding: getPadding(bottom: 6),
                                              child: Text("lbl_250".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium111)))
                                    ])),
                            Container(
                                height: getVerticalSize(32),
                                width: getHorizontalSize(31),
                                margin: getMargin(left: 10),
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgVectorGreen900,
                                          height: getVerticalSize(32),
                                          width: getHorizontalSize(31),
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: Padding(
                                              padding: getPadding(
                                                  right: 3, bottom: 6),
                                              child: Text("lbl_500".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium111Green900)))
                                    ])),
                            Container(
                                height: getVerticalSize(32),
                                width: getHorizontalSize(31),
                                margin: getMargin(left: 10),
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgVectorGreen900,
                                          height: getVerticalSize(32),
                                          width: getHorizontalSize(31),
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                              padding: getPadding(bottom: 6),
                                              child: Text("lbl_1000".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium111Green900)))
                                    ])),
                            CustomImageView(
                                svgPath: ImageConstant.imgFile,
                                height: getVerticalSize(32),
                                width: getHorizontalSize(31),
                                margin: getMargin(left: 10)),
                            Spacer(),
                            Padding(
                                padding: getPadding(top: 5, bottom: 7),
                                child: Text("lbl_g".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratBold148)),
                            Container(
                                height: getSize(16),
                                width: getSize(16),
                                margin: getMargin(left: 2, top: 6, bottom: 8),
                                padding: getPadding(
                                    left: 4, top: 5, right: 4, bottom: 5),
                                decoration: AppDecoration.fillWhiteA700,
                                child: Stack(children: [
                                  CustomImageView(
                                      svgPath: ImageConstant
                                          .imgIconioniciosarrowback,
                                      height: getVerticalSize(4),
                                      width: getHorizontalSize(8),
                                      alignment: Alignment.bottomCenter)
                                ]))
                          ])),
                      Padding(
                          padding: getPadding(left: 6, top: 20),
                          child: Text("msg_select_quantity".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium1295)),
                      Padding(
                          padding: getPadding(left: 5, top: 3, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: getMargin(top: 5, bottom: 3),
                                  padding: getPadding(
                                      left: 12, top: 3, right: 12, bottom: 3),
                                  decoration: AppDecoration.fillGreen900
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder15),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgShape,
                                            height: getVerticalSize(1),
                                            width: getHorizontalSize(9),
                                            margin:
                                                getMargin(top: 12, bottom: 11)),
                                        Padding(
                                            padding:
                                                getPadding(left: 21, top: 2),
                                            child: Text("lbl_1".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular148)),
                                        Container(
                                          height: getSize(9),
                                          width: getSize(9),
                                          margin: getMargin(
                                              left: 18, top: 8, bottom: 8),
                                          child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgShape,
                                                    height: getVerticalSize(9),
                                                    width: getHorizontalSize(1),
                                                    alignment:
                                                        Alignment.centerRight,
                                                    margin:
                                                        getMargin(right: 3)),
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgShape,
                                                  height: getVerticalSize(1),
                                                  width: getHorizontalSize(9),
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  margin: getMargin(bottom: 3),
                                                ),
                                              ]),
                                        ),
                                      ]),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // onTapAddtocart();
                                    Provider.of<HomeProvider>(context,listen: false)
                                        .addProductToCart();
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.green.shade800),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "lbl_add_to_cart".tr,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.green.shade800),
                                      ),
                                    ),
                                  ),
                                ),
                                // CustomButton(
                                //     height: getVerticalSize(41),
                                //     width: getHorizontalSize(143),
                                //     text: "lbl_add_to_cart".tr,
                                //     variant:
                                //         ButtonVariant.OutlineGreen900_1,
                                //     shape: ButtonShape.Square,
                                //     padding: ButtonPadding.PaddingAll7,
                                //     fontStyle: ButtonFontStyle
                                //         .PoppinsMedium148,
                                //     onTap: () {
                                //       onTapAddtocart();
                                //     })
                              ])),
                      Padding(
                          padding: getPadding(left: 5, top: 17),
                          child: Text("msg_you_may_also_like".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratBold14)),
                      Container(
                          height: getVerticalSize(197),
                          child: Obx(() => ListView.separated(
                              padding: getPadding(left: 4, top: 8),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(20));
                              },
                              itemCount: controller.iphone14FiftythreeModelObj
                                  .value.listvector2ItemList.value.length,
                              itemBuilder: (context, index) {
                                Listvector2ItemModel model = controller
                                    .iphone14FiftythreeModelObj
                                    .value
                                    .listvector2ItemList
                                    .value[index];
                                return Listvector2ItemWidget(model);
                              }))),
                      Padding(
                          padding: getPadding(left: 4, top: 19),
                          child: Text("lbl_reviews2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium14Gray90005)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: controller.commentController,
                          hintText: "msg_add_your_comment".tr,
                          margin: getMargin(left: 4, top: 13, right: 21),
                          variant: TextFormFieldVariant.UnderLineGray600,
                          fontStyle: TextFormFieldFontStyle.PoppinsRegular14,
                          textInputAction: TextInputAction.done),
                      CustomImageView(
                        imagePath: ImageConstant.imgClippathgroup,
                        height: getVerticalSize(450),
                        width: getHorizontalSize(350),
                        margin: getMargin(left: 4, top: 25),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  onTapAddtocart() {
    Get.toNamed(
      AppRoutes.iphone14FiftyfourScreen,
    );
  }

  onTapArrowleft1() {
    Get.back(
        // AppRoutes.iphone14FiftytwoScreen,
        );
  }
}
